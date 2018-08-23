.class public Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
.source "MmbStRecordingControllerSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschedule;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;
    }
.end annotation


# static fields
.field private static final CP_PROJECTION:[Ljava/lang/String;

.field private static final CP_PROJECTION_STARTTIME:[Ljava/lang/String;

.field private static final CP_SELECTION:Ljava/lang/String;


# instance fields
.field private mConflictCb:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;

.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;",
            ">;"
        }
    .end annotation
.end field

.field private mStRecDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lmmb/android/MmbStRecMw/MmbStRecMwClient;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;",
            ">;"
        }
    .end annotation
.end field

.field mStRecMwList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmmb/android/MmbStRecMw/MmbStRecMwClient;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;

.field mTimer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;",
            ">;"
        }
    .end annotation
.end field

.field private mUserParamRsv:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    new-instance v0, Ljava/lang/String;

    const-string v1, "QueryId = ? AND GetType = ? AND DictionaryMode = ? AND DictionaryChange = ? AND VersionFilter = ? AND crid = ?"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->CP_SELECTION:Ljava/lang/String;

    .line 103
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "crid"

    aput-object v1, v0, v3

    const-string v1, "metaTitleMain"

    aput-object v1, v0, v4

    const-string v1, "metaTitleSecondary"

    aput-object v1, v0, v5

    const-string v1, "metaTitleImage"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "metaKeyWordMain"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "metaKeyWordSecondary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "metaKeyWordOther"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "metaGenreMain"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "metaGenreSecondary"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "metaGenreOther"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "metaParental"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "metaPurchasePrice"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "metaPurchaseCurrency"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "metaPurchaseType"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "metaPurchaseName"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "metaRealTimeEvtStartTime"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "metaRealTimeEvtEndTime"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "metaSynopsisShort"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "metaSynopsisMedium"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "metaSynopsisLong"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->CP_PROJECTION:[Ljava/lang/String;

    .line 126
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "crid"

    aput-object v1, v0, v3

    const-string v1, "metaRealTimeEvtStartTime"

    aput-object v1, v0, v4

    const-string v1, "metaRealTimeEvtEndTime"

    aput-object v1, v0, v5

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->CP_PROJECTION_STARTTIME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 79
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mConflictCb:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;

    .line 81
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    .line 83
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecDataMap:Ljava/util/HashMap;

    .line 85
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mUserParamRsv:I

    .line 88
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;

    .line 90
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 92
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    .line 156
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->hasRecordingFunction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const-string v0, "Recoding Module Unsupported"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    const-string v1, "Recoding Module Unsupported"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 161
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->reschedule(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V

    return-void
.end method

.method private addQueue(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;Z)V
    .locals 4
    .param p1, "aMessage"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    .param p2, "aClear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
        }
    .end annotation

    .prologue
    .line 1213
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1233
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    if-eqz p2, :cond_2

    .line 1217
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 1220
    :cond_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 1222
    .local v1, "queueret":Z
    if-nez v1, :cond_0

    .line 1223
    const-string v2, "mQueue.offer error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1225
    .end local v1    # "queueret":Z
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1227
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private checkRequiresTierUpdating()V
    .locals 5

    .prologue
    .line 2210
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v0

    .line 2214
    .local v0, "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkForeignMode()I

    move-result v2

    .line 2215
    .local v2, "foreignMode":I
    if-nez v2, :cond_0

    .line 2217
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkRequiresTierUpdatingAll(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2226
    .end local v0    # "conflictModule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v2    # "foreignMode":I
    :cond_0
    :goto_0
    return-void

    .line 2219
    :catch_0
    move-exception v1

    .line 2220
    .local v1, "err":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private createStRecMw()Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .locals 5

    .prologue
    .line 1426
    new-instance v1, Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    invoke-direct {v1}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;-><init>()V

    .line 1431
    .local v1, "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)V

    .line 1433
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecDataMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1435
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listener unregistered : middle<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1438
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v2

    .line 1442
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1440
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1447
    return-object v1
.end method

.method private getMwInstance(I)Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .locals 5
    .param p1, "aUserParam"    # I

    .prologue
    .line 1466
    const/4 v3, 0x0

    .line 1467
    .local v3, "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x1

    if-ge v0, v4, :cond_2

    .line 1468
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignStRecMw()Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    move-result-object v1

    .line 1469
    .local v1, "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    if-eqz v1, :cond_1

    .line 1470
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;

    move-result-object v2

    .line 1471
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1472
    move-object v3, v1

    .line 1474
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    .line 1476
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    .line 1477
    if-eqz v3, :cond_3

    .line 1485
    .end local v1    # "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_2
    return-object v3

    .line 1467
    .restart local v1    # "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private reschAfterRecordingInterruption(Ljava/lang/String;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1659
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->getRecSchedule(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v1

    .line 1661
    .local v1, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    if-nez v1, :cond_0

    .line 1662
    const-string v4, "Schedule data is null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1683
    :goto_0
    return-void

    .line 1669
    :cond_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;

    invoke-direct {v2, p0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V

    .line 1671
    .local v2, "scheduleProcessThread":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1674
    .local v3, "thread":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1675
    :catch_0
    move-exception v0

    .line 1677
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private reschedule(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    .locals 12
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, 0x3e8

    const/4 v8, 0x0

    .line 1787
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getStartAndEndTime(Ljava/lang/String;)[Ljava/lang/Long;

    move-result-object v1

    .line 1788
    .local v1, "time":[Ljava/lang/Long;
    if-eqz v1, :cond_0

    aget-object v4, v1, v8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-gez v4, :cond_0

    aget-object v4, v1, v9

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-ltz v4, :cond_2

    .line 1789
    :cond_0
    const-string v4, "Failed to get the metadata"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1809
    :cond_1
    :goto_0
    return-void

    .line 1791
    :cond_2
    aget-object v4, v1, v8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1792
    .local v2, "triggerTime":J
    aget-object v4, v1, v8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    sub-long/2addr v4, v6

    mul-long v2, v4, v10

    .line 1793
    iget-wide v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 1795
    iput-wide v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 1796
    aget-object v4, v1, v8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v10

    iput-wide v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 1797
    aget-object v4, v1, v9

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v10

    iput-wide v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    .line 1799
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1800
    :catch_0
    move-exception v0

    .line 1801
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startRecording(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)V
    .locals 8
    .param p1, "aStateObj"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1023
    const/4 v1, 0x0

    .line 1024
    .local v1, "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    const/4 v3, 0x0

    .line 1027
    .local v3, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;

    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->threadStart(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;)Z
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1032
    :goto_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignStRecMw()Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    move-result-object v2

    .line 1033
    .local v2, "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    if-nez v2, :cond_0

    .line 1034
    const-string v4, "Mw Instance is null"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1035
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v5, "Mw Instance is null"

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1028
    .end local v2    # "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    const-string v4, "IllegalThreadStateException Error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1038
    .end local v0    # "e":Ljava/lang/IllegalThreadStateException;
    .restart local v2    # "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_0
    if-nez v3, :cond_1

    .line 1039
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;

    .end local v1    # "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-direct {v1, v7, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;-><init>(ILmmb/android/MmbStRecMw/MmbStRecMwClient;[Ljava/lang/Object;)V

    .line 1045
    .restart local v1    # "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    .line 1047
    invoke-direct {p0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;Z)V

    .line 1052
    return-void

    .line 1042
    :cond_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;

    .end local v1    # "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    const/4 v4, 0x2

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-direct {v1, v4, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;-><init>(ILmmb/android/MmbStRecMw/MmbStRecMwClient;[Ljava/lang/Object;)V

    .restart local v1    # "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    goto :goto_1
.end method

.method private stopRecording(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;I)V
    .locals 10
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .param p2, "aReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1109
    const/4 v4, 0x0

    .line 1112
    .local v4, "result":Z
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;

    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->threadStart(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;)Z
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1117
    if-eqz v4, :cond_1

    .line 1118
    const-string v5, "Recording thread was not started"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    :goto_0
    return-void

    .line 1113
    :catch_0
    move-exception v1

    .line 1114
    .local v1, "e":Ljava/lang/IllegalThreadStateException;
    :try_start_1
    const-string v5, "IllegalThreadStateException Error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1117
    if-eqz v4, :cond_1

    .line 1118
    const-string v5, "Recording thread was not started"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1117
    .end local v1    # "e":Ljava/lang/IllegalThreadStateException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_0

    .line 1118
    const-string v5, "Recording thread was not started"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1122
    :cond_0
    throw v5

    .line 1127
    :cond_1
    const/4 v2, 0x0

    .line 1128
    .local v2, "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    const/4 v0, 0x0

    .line 1129
    .local v0, "clear":Z
    if-eqz p1, :cond_3

    .line 1130
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignStRecMw()Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    move-result-object v3

    .line 1131
    .local v3, "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    if-nez v3, :cond_2

    .line 1132
    const-string v5, "Mw Instance is null"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1133
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v6, "Mw Instance is null"

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1135
    :cond_2
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;

    .end local v2    # "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    const/4 v5, 0x3

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p1, v6, v9

    invoke-direct {v2, v5, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;-><init>(ILmmb/android/MmbStRecMw/MmbStRecMwClient;[Ljava/lang/Object;)V

    .line 1137
    .restart local v2    # "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    .line 1144
    .end local v3    # "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;Z)V

    goto :goto_0

    .line 1139
    :cond_3
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;

    .end local v2    # "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    const/4 v5, 0x5

    const/4 v6, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-direct {v2, v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;-><init>(ILmmb/android/MmbStRecMw/MmbStRecMwClient;[Ljava/lang/Object;)V

    .line 1141
    .restart local v2    # "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private threadStart(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;)Z
    .locals 4
    .param p1, "aThread"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;,
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 1173
    if-nez p1, :cond_0

    .line 1174
    const-string v2, "Thread is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v3, "Thread is null"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1177
    :cond_0
    const/4 v0, 0x0

    .line 1179
    .local v0, "result":Z
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    .line 1188
    .end local v0    # "result":Z
    .local v1, "result":I
    :goto_0
    return v1

    .line 1182
    .end local v1    # "result":I
    .restart local v0    # "result":Z
    :cond_1
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->start()V

    .line 1183
    const/4 v0, 0x1

    move v1, v0

    .line 1188
    .restart local v1    # "result":I
    goto :goto_0
.end method


# virtual methods
.method assignListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    .locals 5
    .param p1, "aMwInstance"    # Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    .prologue
    .line 1578
    const/4 v1, 0x0

    .line 1580
    .local v1, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecDataMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1581
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listener unregistered : middle<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1584
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    .line 1591
    :goto_0
    monitor-exit v3

    .line 1596
    return-object v1

    .line 1586
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;

    move-object v1, v0

    goto :goto_0

    .line 1591
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method assignStRecMw()Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .locals 5

    .prologue
    .line 1504
    const/4 v1, 0x0

    .line 1506
    .local v1, "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    monitor-enter v3

    .line 1510
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1512
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    move-object v1, v0

    .line 1517
    :cond_0
    monitor-exit v3

    .line 1522
    return-object v1

    .line 1517
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public autoOperationEnvironment()V
    .locals 2

    .prologue
    .line 500
    const/16 v0, 0xa

    .line 502
    .local v0, "reason":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->checkBattery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    const/16 v0, 0xf

    .line 506
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->recAllStopProcessing(I)V

    .line 511
    return-void
.end method

.method checkBattery()Z
    .locals 5

    .prologue
    .line 2073
    const/4 v3, 0x0

    .line 2075
    .local v3, "result":Z
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v2

    .line 2076
    .local v2, "conflict":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getBatteryStatus()I

    move-result v1

    .line 2077
    .local v1, "batteryStatus":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getBatteryLevel()I

    move-result v0

    .line 2081
    .local v0, "batteryLevel":I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-le v0, v4, :cond_1

    .line 2084
    :cond_0
    const/4 v3, 0x1

    .line 2090
    :cond_1
    return v3
.end method

.method public cleanupModule()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 884
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->cleanupModule()V

    .line 891
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v3

    const v4, 0xa91a

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mConflictCb:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;

    invoke-virtual {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->unregisterCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :goto_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    monitor-enter v4

    .line 898
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 899
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    .line 900
    .local v2, "timer":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->cancelTimer()V

    goto :goto_1

    .line 904
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "timer":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 902
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 904
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 905
    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    .line 907
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;

    iput-boolean v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mFinalizeFlag:Z

    .line 908
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->autoOperationEnvironment()V

    .line 909
    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;

    .line 911
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    monitor-enter v4

    .line 912
    :try_start_3
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 913
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 914
    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 916
    iput v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mUserParamRsv:I

    .line 921
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 925
    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    .line 931
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecDataMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 935
    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecDataMap:Ljava/util/HashMap;

    .line 940
    return-void

    .line 913
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method executeTaskReschedule(Ljava/lang/String;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1880
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschedule;

    invoke-direct {v1, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschedule;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;Ljava/lang/String;)V

    .line 1881
    .local v1, "scheduleProcessThread":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschedule;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1884
    .local v2, "thread":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1893
    :goto_0
    return-void

    .line 1885
    :catch_0
    move-exception v0

    .line 1887
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public executeTaskUnexpectSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 587
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;

    invoke-direct {v1, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 589
    .local v1, "scheduleProcessThread":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 592
    .local v2, "thread":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method getMetadata(Ljava/lang/String;)Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2024
    const/4 v8, 0x0

    .line 2027
    .local v8, "result":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    :try_start_0
    const-string v2, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2029
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "ja"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "false"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "false"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    aput-object p1, v4, v2

    .line 2031
    .local v4, "selectionargs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2032
    .local v0, "content":Landroid/content/ContentResolver;
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->CP_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->CP_SELECTION:Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 2035
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2038
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2039
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->convertMetaItem(Landroid/database/Cursor;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;)Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 2043
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2053
    .end local v0    # "content":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "selectionargs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v8

    .line 2040
    .restart local v0    # "content":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v4    # "selectionargs":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2041
    .local v7, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    const-string v2, "CursorIndexOutOfBoundsException"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2043
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2046
    .end local v0    # "content":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "selectionargs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catch_1
    move-exception v7

    .line 2047
    .local v7, "e":Ljava/lang/Exception;
    const-string v2, "%s"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v7, v3, v9

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2043
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "content":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v4    # "selectionargs":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method public getMmbStRecordingCurrentState(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    .locals 8
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
        }
    .end annotation

    .prologue
    .line 457
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;>;"
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    monitor-enter v6

    .line 459
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    .line 460
    .local v3, "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 461
    const-string v5, "Process is canceled by User"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    const/4 v5, 0x0

    monitor-exit v6

    .line 482
    .end local v3    # "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :goto_1
    return-object v5

    .line 464
    .restart local v3    # "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 466
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    :try_start_1
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getState()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 471
    :try_start_2
    invoke-virtual {p0, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    goto :goto_0

    .line 474
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    .end local v3    # "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 467
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    .restart local v3    # "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 469
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 471
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {p0, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    throw v5

    .line 474
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    .end local v3    # "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_1
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 475
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 476
    const/4 v4, 0x0

    :cond_2
    move-object v5, v4

    .line 482
    goto :goto_1
.end method

.method getStartAndEndTime(Ljava/lang/String;)[Ljava/lang/Long;
    .locals 13
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 1827
    const/4 v8, 0x0

    .line 1830
    .local v8, "result":[Ljava/lang/Long;
    :try_start_0
    const-string v2, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1832
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "ja"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "false"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "false"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    aput-object p1, v4, v2

    .line 1834
    .local v4, "selectionargs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1835
    .local v0, "content":Landroid/content/ContentResolver;
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->CP_PROJECTION_STARTTIME:[Ljava/lang/String;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->CP_SELECTION:Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 1837
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1839
    const/4 v2, 0x2

    :try_start_1
    new-array v8, v2, [Ljava/lang/Long;

    .line 1841
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1842
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Long;

    const-wide/16 v10, 0x0

    invoke-direct {v3, v10, v11}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v8, v2

    .line 1843
    const/4 v2, 0x0

    const-string v3, "metaRealTimeEvtStartTime"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    .line 1845
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Long;

    const-wide/16 v10, 0x0

    invoke-direct {v3, v10, v11}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v8, v2

    .line 1846
    const/4 v2, 0x1

    const-string v3, "metaRealTimeEvtEndTime"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1851
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1861
    .end local v0    # "content":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "selectionargs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v8

    .line 1848
    .restart local v0    # "content":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v4    # "selectionargs":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1849
    .local v7, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    const-string v2, "CursorIndexOutOfBoundsException"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1851
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1854
    .end local v0    # "content":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "selectionargs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catch_1
    move-exception v7

    .line 1855
    .local v7, "e":Ljava/lang/Exception;
    const-string v2, "%s"

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v7, v3, v9

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1851
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "content":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v4    # "selectionargs":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 771
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v5

    .line 772
    .local v5, "siMetadataController":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, p1, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v2

    .line 773
    .local v2, "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const-string v6, ""

    .line 774
    .local v6, "title":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v7, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    if-eqz v7, :cond_0

    iget-object v7, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v7, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    if-eqz v7, :cond_0

    .line 776
    iget-object v7, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v0, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 778
    .local v4, "metatitle":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    if-eqz v4, :cond_1

    const-string v7, "main"

    iget-object v8, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 781
    iget-object v7, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->title:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 783
    iget-object v6, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->title:Ljava/lang/String;

    .line 793
    .end local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "metatitle":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    :cond_0
    return-object v6

    .line 776
    .restart local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "metatitle":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 8
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 963
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;

    if-nez v4, :cond_1

    .line 964
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeaveFunction()V

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    const/4 v2, 0x1

    .line 969
    .local v2, "saveDevice":I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 973
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentSaveDevice()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;

    move-result-object v3

    .line 975
    .local v3, "saveInfo":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    iget v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbRecContent:I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    if-ne v5, v2, :cond_0

    .line 981
    invoke-direct {p0, v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->stopRecording(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;I)V

    goto :goto_0

    .line 976
    .end local v3    # "saveInfo":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :catch_0
    move-exception v1

    .line 977
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_1
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    if-ne v5, v2, :cond_0

    .line 981
    invoke-direct {p0, v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->stopRecording(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;I)V

    goto :goto_0

    .line 980
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catchall_0
    move-exception v4

    if-ne v5, v2, :cond_2

    .line 981
    invoke-direct {p0, v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->stopRecording(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;I)V

    :cond_2
    throw v4

    .line 984
    :cond_3
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->checkBattery()Z

    move-result v4

    if-nez v4, :cond_0

    .line 987
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$1;

    invoke-direct {v4, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)V

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$1;->start()V

    goto :goto_0
.end method

.method public onTimerExpired(Ljava/lang/Object;)V
    .locals 3
    .param p1, "aObj"    # Ljava/lang/Object;

    .prologue
    .line 2110
    instance-of v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    if-eqz v1, :cond_1

    .line 2116
    :try_start_0
    check-cast p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    .end local p1    # "aObj":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->startRecording(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2132
    :cond_0
    :goto_0
    return-void

    .line 2117
    :catch_0
    move-exception v0

    .line 2118
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2119
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto :goto_0

    .line 2121
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local p1    # "aObj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2126
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "aObj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->stopRec(II)V

    goto :goto_0
.end method

.method recAllStopProcessing(I)V
    .locals 2
    .param p1, "aReason"    # I

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 1388
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;

    monitor-enter v1

    .line 1390
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1394
    monitor-exit v1

    .line 1402
    :goto_0
    return-void

    .line 1396
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopAll(I)V

    .line 1397
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V
    .locals 2
    .param p1, "aMwInstance"    # Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .param p2, "aRecordingListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;

    .prologue
    .line 1618
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1639
    :cond_0
    :goto_0
    return-void

    .line 1623
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecDataMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1624
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1626
    monitor-exit v1

    goto :goto_0

    .line 1634
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1628
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;

    .line 1634
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V
    .locals 3
    .param p1, "aMwInstance"    # Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    .prologue
    .line 1540
    if-nez p1, :cond_0

    .line 1560
    :goto_0
    return-void

    .line 1544
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    monitor-enter v1

    .line 1548
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 1550
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rescheduleChangedTime([Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 8
    .param p1, "aCridList"    # [Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
        }
    .end annotation

    .prologue
    .line 535
    if-eqz p1, :cond_0

    .line 536
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 537
    .local v1, "crid":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 538
    const-string v6, "Process is canceled by User"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "crid":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void

    .line 541
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "crid":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 536
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 545
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->getRecSchedule(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v5

    .line 547
    .local v5, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    if-eqz v5, :cond_2

    .line 552
    invoke-direct {p0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->reschedule(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 556
    .end local v1    # "crid":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :catch_0
    move-exception v2

    .line 557
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 558
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public setMmbStRecordingEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 5
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v4, 0x0

    .line 419
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignStRecMw()Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    move-result-object v1

    .line 420
    .local v1, "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    if-nez v1, :cond_0

    .line 421
    const-string v3, "Mw Instance is null"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v4, "Mw Instance is null"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 424
    :cond_0
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;

    move-result-object v0

    .line 426
    .local v0, "listner":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setListnerUi(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;)V

    .line 428
    invoke-virtual {p0, v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    .line 429
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    .line 431
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 436
    .local v2, "ret":Ljava/lang/Integer;
    return-object v2
.end method

.method setWakeup()V
    .locals 4

    .prologue
    .line 1996
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    move-result-object v1

    .line 1999
    .local v1, "sleepcontrol":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->wakeupDevice(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2006
    .end local v1    # "sleepcontrol":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
    :goto_0
    return-void

    .line 2000
    :catch_0
    move-exception v0

    .line 2001
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setupModule()V
    .locals 4

    .prologue
    .line 858
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v1

    const v2, 0xa91a

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mConflictCb:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->registerCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 862
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startRec(ILjava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 4
    .param p1, "aServiceId"    # I
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aUserParam"    # I
    .param p4, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;,
            Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 194
    if-lez p1, :cond_0

    invoke-static {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez p3, :cond_0

    if-nez p4, :cond_1

    .line 196
    :cond_0
    const-string v2, "Parameters anomaly"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "Parameters anomaly"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->setSleepTimerForStRecStart()V

    .line 202
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->getNewStateObj(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v1

    .line 203
    .local v1, "stateObj":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setServiceID(I)V

    .line 204
    invoke-virtual {v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setCrid(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setUserParam(I)V

    .line 206
    invoke-virtual {v1, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setCallback(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 208
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->startRecording(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)V

    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 214
    .local v0, "ret":Ljava/lang/Integer;
    return-object v0
.end method

.method public startRec(ILjava/lang/String;Ljava/lang/String;JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 16
    .param p1, "aServiceId"    # I
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aPackageName"    # Ljava/lang/String;
    .param p4, "aTriggerTime"    # J
    .param p6, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;,
            Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
        }
    .end annotation

    .prologue
    .line 252
    if-lez p1, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p3, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v7, v14, p4

    if-gez v7, :cond_0

    if-nez p6, :cond_1

    .line 254
    :cond_0
    const-string v7, "Parameters anomaly"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v7, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v14, "Parameters anomaly"

    invoke-direct {v7, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 258
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->checkRequiresTierUpdating()V

    .line 263
    move-object/from16 v0, p0

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mUserParamRsv:I

    const/high16 v14, -0x80000000

    if-ne v7, v14, :cond_2

    .line 264
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mUserParamRsv:I

    .line 267
    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mUserParamRsv:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mUserParamRsv:I

    .line 269
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->getNewStateObj(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    .line 270
    .local v5, "stateObj":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setServiceID(I)V

    .line 271
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setCrid(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mUserParamRsv:I

    invoke-virtual {v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setUserParam(I)V

    .line 273
    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setCallback(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 274
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setPackageName(Ljava/lang/String;)V

    .line 275
    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setTriggerTime(J)V

    .line 277
    const-wide/16 v2, 0x0

    .line 280
    .local v2, "currentTime":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 285
    :goto_0
    const-wide/32 v12, 0xafc8

    .line 286
    .local v12, "timerTime":J
    const-wide/32 v14, 0xafc8

    add-long v8, p4, v14

    .line 287
    .local v8, "timerBound":J
    const-wide/16 v14, 0x3e8

    add-long v10, p4, v14

    .line 288
    .local v10, "timerCheck":J
    cmp-long v7, v8, v2

    if-gtz v7, :cond_4

    .line 290
    const-wide/16 v12, 0x0

    .line 296
    :cond_3
    :goto_1
    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-nez v7, :cond_5

    .line 298
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->startRecording(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)V

    .line 316
    :goto_2
    return-void

    .line 281
    .end local v8    # "timerBound":J
    .end local v10    # "timerCheck":J
    .end local v12    # "timerTime":J
    :catch_0
    move-exception v4

    .line 282
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 291
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v8    # "timerBound":J
    .restart local v10    # "timerCheck":J
    .restart local v12    # "timerTime":J
    :cond_4
    cmp-long v7, v10, v2

    if-gtz v7, :cond_3

    .line 293
    sub-long v12, v8, v2

    goto :goto_1

    .line 301
    :cond_5
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v12, v13, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;JLcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)V

    .line 302
    .local v6, "timer":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    monitor-enter v14

    .line 304
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->notifyToUiBeforeRec()V

    goto :goto_2

    .line 305
    :catch_1
    move-exception v4

    .line 306
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 307
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v7, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 309
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7
.end method

.method public startupModule()V
    .locals 3

    .prologue
    .line 810
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->startupModule()V

    .line 815
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 816
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    .line 817
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecDataMap:Ljava/util/HashMap;

    .line 818
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;

    invoke-direct {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mConflictCb:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;

    .line 823
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 825
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->createStRecMw()Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    move-result-object v1

    .line 826
    .local v1, "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 835
    .end local v1    # "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_0
    return-void
.end method

.method public stopRec(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    .locals 2
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 339
    invoke-direct {p0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->stopRecording(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;I)V

    .line 340
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 345
    .local v0, "ret":Ljava/lang/Integer;
    return-object v0
.end method

.method public stopRec()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xf

    .line 368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v1, "stateObjList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    monitor-enter v4

    .line 371
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 372
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    .line 373
    .local v2, "timer":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->cancelTimer()V

    .line 374
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->getStateObject()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 375
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->getStateObject()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v3

    const/16 v5, 0xf

    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 376
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->getStateObject()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "timer":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 379
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 382
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;

    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopSpecify(Ljava/util/List;)V

    .line 384
    :cond_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 385
    :try_start_3
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 387
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->recAllStopProcessing(I)V

    .line 394
    return-void

    .line 384
    .restart local v0    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method stopRec(II)V
    .locals 11
    .param p1, "aUserParam"    # I
    .param p2, "aReason"    # I

    .prologue
    const/4 v10, 0x1

    .line 1290
    const/4 v6, 0x0

    .line 1291
    .local v6, "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    const/4 v4, 0x0

    .line 1293
    .local v4, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMwInstance(I)Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    move-result-object v6

    .line 1294
    if-nez v6, :cond_0

    .line 1295
    const-string v7, "Mw Instance is null!!"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1333
    :goto_0
    return-void

    .line 1298
    :cond_0
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;

    move-result-object v4

    .line 1299
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 1301
    const/4 v0, 0x0

    .line 1302
    .local v0, "clear":Z
    const/4 v3, 0x4

    .line 1303
    .local v3, "eventId":I
    const/16 v7, 0x100

    if-ne v7, p2, :cond_2

    .line 1305
    const/4 v0, 0x1

    .line 1306
    const/4 v3, 0x5

    .line 1319
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 1320
    .local v5, "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;

    .end local v5    # "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v5, v3, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;-><init>(ILmmb/android/MmbStRecMw/MmbStRecMwClient;[Ljava/lang/Object;)V

    .line 1321
    .restart local v5    # "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    invoke-virtual {p0, v6, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    .line 1322
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    .line 1324
    invoke-direct {p0, v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;Z)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1325
    .end local v0    # "clear":Z
    .end local v3    # "eventId":I
    .end local v5    # "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    :catch_0
    move-exception v2

    .line 1326
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1327
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto :goto_0

    .line 1307
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v0    # "clear":Z
    .restart local v3    # "eventId":I
    :cond_2
    const/16 v7, 0x9

    if-ne v7, p2, :cond_1

    if-gez p1, :cond_1

    .line 1313
    const/4 v1, 0x0

    .line 1314
    .local v1, "crid":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v1

    .line 1315
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->reschAfterRecordingInterruption(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
