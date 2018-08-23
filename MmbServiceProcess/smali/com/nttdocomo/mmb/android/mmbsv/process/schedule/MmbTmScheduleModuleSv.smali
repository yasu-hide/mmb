.class public Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
.source "MmbTmScheduleModuleSv.java"


# static fields
.field private static TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

.field private databaseBrokenFlag:Z

.field private generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

.field private lock:Ljava/lang/Object;

.field private playBeforeTime:J

.field private seriesExpiredDate:J

.field private timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

.field private timerThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4954
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->TYPE_MAP:Ljava/util/Map;

    .line 4956
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->TYPE_MAP:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FC_AUTO_DEL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4957
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->TYPE_MAP:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LOG_SEND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4958
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->TYPE_MAP:Ljava/util/Map;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RECOMMEND_GET"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4959
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;-><init>(Landroid/content/Context;)V

    .line 92
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    .line 94
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    .line 96
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->databaseBrokenFlag:Z

    .line 100
    const-wide v0, 0x141dd76000L

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->seriesExpiredDate:J

    .line 102
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->playBeforeTime:J

    .line 104
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    .param p1, "x1"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .param p2, "x2"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    return-void
.end method

.method private bookingSeriesIdSet(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V
    .locals 5
    .param p1, "aBookingrecord"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .param p2, "aSetrecord"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .prologue
    .line 5109
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    iput v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    .line 5110
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5111
    .local v1, "seriesidset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5112
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5114
    :cond_0
    iget-object v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 5115
    iget-object v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5117
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 5118
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v3, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->addDataSeriesIdArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 5128
    :goto_0
    return-void

    .line 5121
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 5122
    .local v0, "seriesarray":[Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5123
    iput-object v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    goto :goto_0
.end method

.method private checkCancelbyUser(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 1
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 5263
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5264
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;-><init>()V

    throw v0

    .line 5269
    :cond_0
    return-void
.end method

.method private checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V
    .locals 5
    .param p1, "aException"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .param p2, "aThrowFlag"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3869
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3904
    const-string v0, "An Exception has occurred! code[xx]"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3910
    :cond_0
    return-void

    .line 3875
    :pswitch_0
    if-eqz p2, :cond_0

    .line 3876
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    const-string v1, "Database not open"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3880
    :pswitch_1
    const-string v0, "An Exception has occurred! code[%d] message[%s]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3882
    if-eqz p2, :cond_0

    .line 3883
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v1, "Inner parameter error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3887
    :pswitch_2
    const-string v0, "An Exception has occurred! code[%d] message[%s]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3890
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->databaseBrokenFlag:Z

    .line 3891
    if-eqz p2, :cond_0

    .line 3892
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v1, "Database broken"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3897
    :pswitch_3
    const-string v0, "An Exception has occurred! code[%d] message[%s]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3899
    if-eqz p2, :cond_0

    .line 3900
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v1, "Fatal Exception"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3869
    nop

    :pswitch_data_0
    .packed-switch -0x3ec
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private commonAlarmTimerDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;)V
    .locals 5
    .param p1, "aSeriesRecord"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .param p2, "aSeriesId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 4557
    const/4 v1, 0x1

    .line 4560
    .local v1, "isdelete":Z
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    if-eq v2, v4, :cond_0

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_1

    .line 4563
    :cond_0
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4565
    const/4 v1, 0x0

    .line 4568
    :cond_1
    if-ne v1, v4, :cond_2

    .line 4571
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    invoke-virtual {v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->deleteAlarmTimer(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 4579
    :cond_2
    :goto_0
    return-void

    .line 4572
    :catch_0
    move-exception v0

    .line 4573
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0
.end method

.method private commonCheckDatabaseBroken(Z)V
    .locals 9
    .param p1, "aIsThrowException"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3962
    iget-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->databaseBrokenFlag:Z

    if-eqz v5, :cond_2

    .line 3963
    const-string v3, "Database broken! -> Tried to recover the DB."

    .line 3968
    .local v3, "message":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 3970
    .local v1, "done":Z
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->existDatabaseFile()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->databaseBrokenFlag:Z

    if-ne v5, v7, :cond_1

    .line 3976
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->reconstructionScheduleDatabase()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 3981
    :goto_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;-><init>()V

    .line 3982
    .local v0, "control":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setMode(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 3983
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setContext(Landroid/content/Context;)V

    .line 3984
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3985
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 3987
    iput-boolean v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->databaseBrokenFlag:Z

    .line 3989
    const/4 v1, 0x1

    .line 3992
    .end local v0    # "control":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_1
    if-ne p1, v7, :cond_3

    if-ne v1, v7, :cond_3

    .line 3993
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3965
    .end local v1    # "done":Z
    .end local v3    # "message":Ljava/lang/String;
    :cond_2
    const-string v3, "Database file not found! -> Tried to recover the DB."

    .restart local v3    # "message":Ljava/lang/String;
    goto :goto_0

    .line 3977
    .restart local v1    # "done":Z
    :catch_0
    move-exception v2

    .line 3978
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v2, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_1

    .line 3998
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_3
    return-void
.end method

.method private commonCheckDatabaseStatus()V
    .locals 2

    .prologue
    .line 3933
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3934
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    const-string v1, "Database not open"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3937
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseBroken(Z)V

    .line 3942
    return-void
.end method

.method private commonDeleteScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IZLjava/util/List;)V
    .locals 7
    .param p1, "aSearchKeyword"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .param p2, "aRepeatFlag"    # I
    .param p3, "aIsDeleteTimer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;",
            "IZ",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "aDeleteRecordList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v6, 0x1

    .line 4611
    if-ne p3, v6, :cond_0

    .line 4612
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4613
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    invoke-virtual {v4, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->deleteAlarmTimer(Landroid/content/Context;I)V

    .line 4612
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4617
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    const/4 v4, 0x3

    invoke-virtual {v3, p1, p2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->deleteScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;II)I

    move-result v0

    .line 4620
    .local v0, "deletecount":I
    if-ne p3, v6, :cond_1

    .line 4621
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v0, :cond_1

    .line 4622
    const-string v3, "An Exception has occurred!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4623
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v4, "Inner Error"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 4626
    .end local v0    # "deletecount":I
    :catch_0
    move-exception v1

    .line 4627
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 4632
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_1
    return-void
.end method

.method private commonGetScheduleDataCount(IIZ)I
    .locals 5
    .param p1, "aScheduleType"    # I
    .param p2, "aRepeatFlag"    # I
    .param p3, "aIsThrowException"    # Z

    .prologue
    .line 4869
    const/4 v2, 0x0

    .line 4871
    .local v2, "result":I
    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 4872
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    iput p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 4873
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    const/4 v4, 0x3

    invoke-virtual {v3, v1, p2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleDataCount(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;II)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4881
    .end local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    :goto_0
    return v2

    .line 4875
    :catch_0
    move-exception v0

    .line 4876
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0
.end method

.method private commonSearchScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)Ljava/util/List;
    .locals 9
    .param p1, "aSearchData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 4655
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4657
    .local v5, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;IILjava/util/List;Ljava/util/List;)I

    move-result v7

    .line 4661
    .local v7, "getcount":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eq v7, v0, :cond_1

    .line 4662
    const-string v0, "An Exception has occurred!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4663
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v1, "Inner Error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 4672
    .end local v7    # "getcount":I
    :catch_0
    move-exception v6

    .line 4673
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 4678
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_0
    return-object v5

    .line 4666
    .restart local v7    # "getcount":I
    :cond_1
    if-gtz v7, :cond_0

    .line 4670
    :try_start_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    const-string v1, "Schedule was not found"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;
    .locals 9
    .param p1, "aSearchKeyword"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .param p2, "aRepeatFlag"    # I
    .param p3, "aTimerFinishFlag"    # I
    .param p4, "aIsUnmatch"    # Z
    .param p5, "aIsThrowException"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;",
            "IIZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 4713
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4715
    .local v5, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IILjava/util/List;Ljava/util/List;)I

    move-result v7

    .line 4718
    .local v7, "getcount":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eq v7, v0, :cond_1

    .line 4719
    const-string v0, "An Exception has occurred!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4720
    if-ne p5, v8, :cond_1

    .line 4721
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v1, "Inner Error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 4730
    .end local v7    # "getcount":I
    :catch_0
    move-exception v6

    .line 4731
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v6, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 4736
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_0
    return-object v5

    .line 4724
    .restart local v7    # "getcount":I
    :cond_1
    if-gtz v7, :cond_0

    if-ne p4, v8, :cond_0

    .line 4728
    :try_start_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    const-string v1, "Schedule was not found"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private commonSearchScheduleKeywordAndSeriesId(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 9
    .param p1, "aSearchKeyword"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .param p2, "aSeriesId"    # Ljava/lang/String;
    .param p3, "aIsUnmatch"    # Z
    .param p4, "aIsThrowException"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 4818
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4820
    .local v5, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    const/4 v3, 0x1

    const/4 v4, 0x3

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getSeriesIdScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/lang/String;IILjava/util/List;)I

    move-result v7

    .line 4824
    .local v7, "getcount":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eq v7, v0, :cond_1

    .line 4825
    const-string v0, "An Exception has occurred!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4826
    if-ne p4, v8, :cond_1

    .line 4827
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v1, "Inner Error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 4836
    .end local v7    # "getcount":I
    :catch_0
    move-exception v6

    .line 4837
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v6, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 4842
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_0
    return-object v5

    .line 4830
    .restart local v7    # "getcount":I
    :cond_1
    if-gtz v7, :cond_0

    if-ne p3, v8, :cond_0

    .line 4834
    :try_start_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    const-string v1, "Schedule was not found"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private commonSearchScheduleKeywordAndTime(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;J)Ljava/util/List;
    .locals 10
    .param p1, "aSearchKeyword"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .param p2, "aTriggerTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 4763
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4765
    .local v6, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getSameTimeScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;JIILjava/util/List;)I

    move-result v8

    .line 4769
    .local v8, "getcount":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-eq v8, v0, :cond_1

    .line 4770
    const-string v0, "An Exception has occurred!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4771
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v1, "Inner Error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 4780
    .end local v8    # "getcount":I
    :catch_0
    move-exception v7

    .line 4781
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v7, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 4786
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_0
    return-object v6

    .line 4774
    .restart local v8    # "getcount":I
    :cond_1
    if-gtz v8, :cond_0

    .line 4778
    :try_start_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    const-string v1, "Schedule was not found"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private commonSeriesScheduleDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;)V
    .locals 11
    .param p1, "aSeriesRecord"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .param p2, "aSeriesId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v10, 0x1

    .line 4331
    const/4 v1, 0x0

    .line 4332
    .local v1, "aIsUnmatch":Z
    const/4 v0, 0x1

    .line 4334
    .local v0, "aIsThrowException":Z
    const/4 v3, 0x1

    .line 4337
    .local v3, "isdelete":Z
    :try_start_0
    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    if-eq v5, v8, :cond_0

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    if-eq v5, v10, :cond_0

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    const/16 v6, 0x1000

    if-ne v5, v6, :cond_3

    .line 4342
    :cond_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {v5, v6, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableDeleteSeriesId([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4346
    if-ne v1, v10, :cond_2

    .line 4347
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    const-string v6, "Series ID was not found"

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 4390
    :catch_0
    move-exception v2

    .line 4391
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 4396
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_1
    return-void

    .line 4352
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {v5, v6, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->deleteDataSeriesIdArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 4354
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 4356
    const/4 v3, 0x0

    .line 4359
    :cond_3
    const/4 v4, 0x0

    .line 4360
    .local v4, "resultcount":I
    if-ne v3, v10, :cond_5

    .line 4364
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    invoke-virtual {v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->deleteAlarmTimer(Landroid/content/Context;I)V

    .line 4366
    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    if-ne v5, v8, :cond_4

    .line 4367
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->updateScheduleData(JLcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I

    move-result v4

    .line 4369
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    iget-object v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->deleteDownloadSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    .line 4384
    :goto_0
    if-eq v4, v10, :cond_1

    .line 4385
    const-string v5, "An Exception has occurred!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4386
    if-ne v0, v10, :cond_1

    .line 4387
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v6, "Inner Error"

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4373
    :cond_4
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->deleteScheduleData(J)I

    move-result v4

    goto :goto_0

    .line 4380
    :cond_5
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->updateScheduleData(JLcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_0
.end method

.method private commonSeriesScheduleDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "aSeriesRecord"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .param p2, "aSeriesId"    # Ljava/lang/String;
    .param p3, "aIsUnmatch"    # Z
    .param p4, "aIsThrowException"    # Z

    .prologue
    const/4 v6, 0x1

    .line 4247
    const/4 v1, 0x1

    .line 4250
    .local v1, "isdelete":Z
    :try_start_0
    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    if-eq v3, v6, :cond_0

    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_3

    .line 4255
    :cond_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {v3, v4, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableDeleteSeriesId([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4259
    if-ne p3, v6, :cond_2

    .line 4260
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    const-string v4, "Series ID was not found"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 4295
    :catch_0
    move-exception v0

    .line 4296
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v0, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 4301
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_1
    return-void

    .line 4265
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {v3, v4, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->deleteDataSeriesIdArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 4267
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 4269
    const/4 v1, 0x0

    .line 4272
    :cond_3
    const/4 v2, 0x0

    .line 4273
    .local v2, "resultcount":I
    if-ne v1, v6, :cond_4

    .line 4277
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    invoke-virtual {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->deleteAlarmTimer(Landroid/content/Context;I)V

    .line 4279
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    iget v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->deleteScheduleData(J)I

    move-result v2

    .line 4289
    :goto_0
    if-eq v2, v6, :cond_1

    .line 4290
    const-string v3, "An Exception has occurred!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4291
    if-ne p4, v6, :cond_1

    .line 4292
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v4, "Inner Error"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4285
    :cond_4
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    iget v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->updateScheduleData(JLcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0
.end method

.method private commonSeriesScheduleDeleteNoCommit(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;)V
    .locals 6
    .param p1, "aSeriesRecord"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .param p2, "aSeriesId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 4421
    const/4 v0, 0x1

    .line 4424
    .local v0, "isdelete":Z
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    if-eq v1, v4, :cond_0

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    if-eq v1, v3, :cond_0

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_2

    .line 4429
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableDeleteSeriesId([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4433
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    const-string v2, "Series ID was not found"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4437
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->deleteDataSeriesIdArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 4439
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4441
    const/4 v0, 0x0

    .line 4444
    :cond_2
    if-ne v0, v3, :cond_4

    .line 4445
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    if-ne v1, v4, :cond_3

    .line 4446
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->updateScheduleDataNoCommit(JLcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I

    .line 4447
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->deleteDownloadSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    .line 4462
    :goto_0
    return-void

    .line 4451
    :cond_3
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->deleteScheduleDataNoCommit(J)V

    goto :goto_0

    .line 4457
    :cond_4
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->updateScheduleDataNoCommit(JLcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I

    goto :goto_0
.end method

.method private commonSeriesScheduleSingleDeleteNoCommit(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;)V
    .locals 7
    .param p1, "aSeriesRecord"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .param p2, "aSeriesId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 4487
    const/4 v0, 0x1

    .line 4490
    .local v0, "isdelete":Z
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    if-eq v1, v5, :cond_0

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    if-eq v1, v4, :cond_0

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_2

    .line 4494
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    const-string v3, "crid://"

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->deleteDataSeriesIdArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 4498
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableDeleteSeriesId([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4502
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    const-string v2, "Series ID was not found"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4506
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->deleteDataSeriesIdArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 4508
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4510
    const/4 v0, 0x0

    .line 4513
    :cond_2
    if-ne v0, v4, :cond_4

    .line 4514
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    if-ne v1, v5, :cond_3

    .line 4515
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->updateScheduleDataNoCommit(JLcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I

    .line 4516
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v6, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->deleteDownloadSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    .line 4531
    :goto_0
    return-void

    .line 4520
    :cond_3
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->deleteScheduleDataNoCommit(J)V

    goto :goto_0

    .line 4526
    :cond_4
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->updateScheduleDataNoCommit(JLcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I

    goto :goto_0
.end method

.method private commonSetSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZ)V
    .locals 10
    .param p1, "aSetRecord"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .param p2, "aIsAdjustTime"    # Z
    .param p3, "aIsInitSeries"    # Z

    .prologue
    const/4 v9, 0x1

    .line 4031
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableCountSchedule(IILcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max Schedule Over ... ScheduleType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4035
    .local v8, "message":Ljava/lang/String;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    invoke-direct {v0, v8, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 4037
    .end local v8    # "message":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 4038
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v7, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 4042
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_0
    if-ne p3, v9, :cond_1

    .line 4044
    :try_start_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->initSeriesIdArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 4048
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->organizeSeriesIdArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 4051
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->setScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I

    move-result v5

    .line 4053
    .local v5, "recordid":I
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    const/16 v1, 0x800

    if-eq v0, v1, :cond_3

    .line 4056
    if-ne p2, v9, :cond_2

    .line 4057
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->playBeforeTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    .line 4059
    :cond_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    iget v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->setAlarmTimer(Landroid/content/Context;JIILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_1

    .line 4069
    .end local v5    # "recordid":I
    :cond_3
    :goto_0
    return-void

    .line 4063
    :catch_1
    move-exception v7

    .line 4064
    .restart local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v7, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0
.end method

.method private commonSetScheduleNoCommit(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V
    .locals 8
    .param p1, "aSetRecord"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 4098
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableCountSchedule(IILcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max Schedule Over ... ScheduleType["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4102
    .local v1, "message":Ljava/lang/String;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;

    iget v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    invoke-direct {v3, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 4104
    .end local v1    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4105
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 4107
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->organizeSeriesIdArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 4111
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->setScheduleDataNoCommit(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I

    move-result v2

    .line 4112
    .local v2, "recordid":I
    iput v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    .line 4116
    return-void
.end method

.method private commonUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZZZ)V
    .locals 9
    .param p1, "aUpdateRecord"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .param p2, "aIsDeleteBeforeTimer"    # Z
    .param p3, "aIsSetAfterTimer"    # Z
    .param p4, "aIsAdjustTime"    # Z
    .param p5, "aIsThrowException"    # Z

    .prologue
    const/4 v4, 0x1

    .line 4150
    if-ne p2, v4, :cond_0

    .line 4151
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->deleteAlarmTimer(Landroid/content/Context;I)V

    .line 4154
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->organizeSeriesIdArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 4157
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->updateScheduleData(JLcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I

    move-result v8

    .line 4159
    .local v8, "updatecount":I
    if-eq v8, v4, :cond_2

    .line 4160
    const-string v0, "An Exception has occurred!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4161
    if-ne p5, v4, :cond_2

    .line 4162
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v1, "Inner Error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 4176
    .end local v8    # "updatecount":I
    :catch_0
    move-exception v7

    .line 4177
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v7, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 4182
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_1
    :goto_0
    return-void

    .line 4165
    .restart local v8    # "updatecount":I
    :cond_2
    if-ne p3, v4, :cond_1

    .line 4168
    if-ne p4, v4, :cond_3

    .line 4169
    :try_start_1
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->playBeforeTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    .line 4172
    :cond_3
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    iget v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->setAlarmTimer(Landroid/content/Context;JIILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private commonUpdateScheduleNoCommit(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V
    .locals 4
    .param p1, "aUpdateRecord"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .prologue
    .line 4205
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->organizeSeriesIdArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 4208
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->updateScheduleDataNoCommit(JLcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 4215
    :goto_0
    return-void

    .line 4209
    :catch_0
    move-exception v0

    .line 4210
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0
.end method

.method private deleteFcContentForSetSeries(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "aDeleteseriesid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 5145
    move-object v1, p1

    .line 5146
    .local v1, "deleteseriesid":Ljava/lang/String;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 5147
    .local v4, "keywordBack":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/4 v6, 0x4

    iput v6, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 5148
    iput-object p2, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 5150
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-direct {p0, v4, v1, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeywordAndSeriesId(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v5

    .line 5153
    .local v5, "recordlistback":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 5154
    .local v0, "accumulation":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSeriesScheduleDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5156
    .end local v0    # "accumulation":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "recordlistback":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :catch_0
    move-exception v2

    .line 5157
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const-string v6, "Failed Fc Content Roolback e[%s]"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5162
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_0
    return-void
.end method

.method private deleteRecContentForSetSeries(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "aDeleteseriesid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 5180
    move-object v0, p1

    .line 5181
    .local v0, "deleteseriesid":Ljava/lang/String;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 5182
    .local v3, "keywordBack":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/16 v6, 0x1000

    iput v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 5183
    iput-object p2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 5185
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-direct {p0, v3, v0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeywordAndSeriesId(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v4

    .line 5188
    .local v4, "recordlistback":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 5189
    .local v5, "reserverec":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, v5, v0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSeriesScheduleDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5191
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "recordlistback":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    .end local v5    # "reserverec":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :catch_0
    move-exception v1

    .line 5192
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const-string v6, "Failed Rec Schedule Roolback e[%s]"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5197
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_0
    return-void
.end method

.method private executeScheduleProcessUpdate(I)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .locals 15
    .param p1, "aRecordid"    # I

    .prologue
    const/4 v14, 0x2

    const/4 v7, 0x1

    .line 4900
    iget-object v13, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v13

    .line 4904
    const/4 v10, 0x0

    .line 4905
    .local v10, "getcount":I
    const/4 v3, 0x0

    .line 4906
    .local v3, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4908
    .local v12, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move/from16 v0, p1

    int-to-long v4, v0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleData(JLjava/util/List;Ljava/util/List;)I

    move-result v10

    .line 4909
    if-ne v10, v7, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eq v10, v2, :cond_1

    .line 4913
    :cond_0
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v3

    .line 4947
    .end local v3    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .local v11, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :goto_0
    return-object v11

    .line 4915
    .end local v11    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .restart local v3    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_1
    const/4 v2, 0x0

    :try_start_3
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    move-object v3, v0

    .line 4918
    iget v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    if-ne v2, v14, :cond_3

    .line 4920
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-wide v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->createRepeatTriggerTime(JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    .line 4923
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZZZ)V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4947
    :cond_2
    :goto_1
    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v11, v3

    .end local v3    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .restart local v11    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    goto :goto_0

    .line 4924
    .end local v11    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .restart local v3    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_3
    :try_start_5
    iget v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbHistory:I

    if-ne v2, v14, :cond_4

    .line 4927
    const/4 v2, 0x2

    iput v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    .line 4928
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZZZ)V
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 4938
    :catch_0
    move-exception v9

    .line 4939
    .local v9, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v2, 0x0

    :try_start_6
    invoke-direct {p0, v9, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_1

    .line 4948
    .end local v9    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .end local v12    # "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 4932
    .restart local v12    # "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :cond_4
    :try_start_7
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    iget v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->deleteScheduleData(J)I

    move-result v8

    .line 4934
    .local v8, "deletecount":I
    if-eq v8, v7, :cond_2

    .line 4935
    const-string v2, "An Exception has occurred!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method private setTimerPreSchedule()V
    .locals 14

    .prologue
    .line 4977
    iget-object v13, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v13

    .line 4982
    const/16 v11, 0x37ff

    .line 4997
    .local v11, "targettype":I
    const/4 v9, 0x0

    .line 4998
    .local v9, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlStartTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5001
    :try_start_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 5002
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/16 v0, 0x37ff

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 5005
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v9

    .line 5009
    invoke-interface {v9}, Ljava/util/List;->size()I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-gtz v0, :cond_0

    .line 5057
    :try_start_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5089
    :goto_0
    return-void

    .line 5018
    :cond_0
    :try_start_3
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 5028
    .local v8, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    iget v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 5029
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-wide v2, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->createRepeatTriggerTimeForPreSchedule(JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5033
    :try_start_4
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->organizeSeriesIdArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 5035
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    iget v2, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->updateScheduleData(JLcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I

    move-result v12

    .line 5037
    .local v12, "updatecount":I
    const/4 v0, 0x1

    if-eq v12, v0, :cond_2

    .line 5038
    const-string v0, "An Exception has occurred!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5047
    .end local v12    # "updatecount":I
    :cond_2
    :goto_2
    :try_start_5
    iget v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    iget v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 5049
    :cond_3
    iget-wide v2, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    iget-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->playBeforeTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 5053
    .end local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :catch_0
    move-exception v6

    .line 5054
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 5055
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v2, "Inner Error"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5057
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    throw v0

    .line 5090
    :catchall_1
    move-exception v0

    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 5040
    .restart local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :catch_1
    move-exception v6

    .line 5041
    .restart local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_2

    .line 5052
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .end local v8    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_4
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlsetTransactionSuccessful()V
    :try_end_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 5057
    :try_start_9
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    .line 5078
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 5079
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 5080
    .local v10, "setTimerrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbSetAlarmWorker;

    invoke-direct {v2, p0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbSetAlarmWorker;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 5082
    .end local v10    # "setTimerrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_5
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 5089
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0
.end method


# virtual methods
.method public attachSeriesToSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aSeries"    # Ljava/lang/String;

    .prologue
    .line 2829
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 2835
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 2837
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForAttachSeriesToSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2839
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2876
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2842
    :cond_0
    :try_start_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2843
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2844
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 2845
    iput-object p2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 2848
    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v8

    .line 2852
    .local v8, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2853
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 2855
    .local v3, "updaterecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    iget-object v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2856
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    iput-object v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 2866
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZZZ)V

    .line 2875
    .end local v3    # "updaterecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_1
    const/16 v0, 0x3e9

    monitor-exit v9

    return v0

    .line 2858
    .restart local v3    # "updaterecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->addDataSeriesIdArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public cleanupModule()V
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getRecordingModule()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->autoOperationEnvironment()V

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->finalizeSchedule()V

    .line 240
    return-void
.end method

.method public deleteFcSchedule(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aSeriesID"    # Ljava/lang/String;
    .param p3, "aIsDeleteDB"    # Z
    .param p4, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1373
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 1378
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 1380
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, p2, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForDeleteFcSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1382
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1419
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1385
    :cond_0
    :try_start_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 1386
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/4 v0, 0x4

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 1387
    iput-object p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 1388
    iput-object p4, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 1392
    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v9

    .line 1396
    .local v9, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    if-ne p3, v6, :cond_1

    .line 1398
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 1402
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v0, p2, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSeriesScheduleDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;ZZ)V

    .line 1398
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1408
    .end local v8    # "i":I
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 1409
    .local v3, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    const/4 v0, 0x2

    iput v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    .line 1410
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZZZ)V

    .line 1418
    .end local v3    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_2
    const/16 v0, 0x3e9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public deleteFcScheduleAll(Ljava/lang/String;)V
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1514
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 1519
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 1521
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForDeleteFcScheduleAll(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1548
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1525
    :cond_0
    :try_start_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 1526
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/16 v0, 0x201e

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 1532
    iput-object p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 1536
    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v6

    .line 1540
    .local v6, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonDeleteScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IZLjava/util/List;)V

    .line 1548
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1549
    return-void
.end method

.method deleteMultiSeriesForSession([Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 23
    .param p1, "aSeriesIdArray"    # [Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 3764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 3770
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 3772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForDeleteMultiSeriesForSession([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3774
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "Illegal parameter"

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3842
    :catchall_0
    move-exception v2

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3777
    :cond_0
    const/4 v10, 0x0

    .line 3782
    .local v10, "doDeleteTimer":Z
    :try_start_1
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 3784
    .local v21, "timerDeleteItemList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlStartTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3786
    const/16 v17, 0x0

    .line 3787
    .local v17, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/16 v19, 0x0

    .line 3788
    .local v19, "serieslist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    move-object/from16 v9, p1

    .local v9, "arr$":[Ljava/lang/String;
    :try_start_2
    array-length v15, v9

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    move v13, v12

    .end local v12    # "i$":I
    .local v13, "i$":I
    :goto_0
    if-ge v13, v15, :cond_3

    aget-object v8, v9, v13

    .line 3790
    .local v8, "aSeriesId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkCancelbyUser(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3791
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 3792
    .local v3, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/16 v2, 0x1005

    iput v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 3796
    move-object/from16 v0, p2

    iput-object v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 3797
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeywordAndSeriesId(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v17

    .line 3800
    const/16 v2, 0x800

    iput v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 3801
    iput-object v8, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 3802
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v19

    .line 3807
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v13    # "i$":I
    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 3808
    .local v18, "series":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSeriesScheduleSingleDeleteNoCommit(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 3820
    .end local v3    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v8    # "aSeriesId":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "len$":I
    .end local v18    # "series":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :catch_0
    move-exception v11

    .line 3821
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;
    :try_start_3
    const-string v2, "Cancellation requests received"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3827
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    .line 3829
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;
    :goto_2
    if-eqz v10, :cond_4

    .line 3830
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;

    .line 3831
    .local v14, "item":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;
    invoke-static {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    move-result-object v2

    invoke-static {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonAlarmTimerDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 3810
    .end local v14    # "item":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;
    .restart local v3    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .restart local v8    # "aSeriesId":Ljava/lang/String;
    .restart local v15    # "len$":I
    :cond_1
    :try_start_5
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 3811
    .local v16, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSeriesScheduleSingleDeleteNoCommit(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;)V

    .line 3812
    new-instance v20, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;)V

    .line 3813
    .local v20, "timerDeleteItem":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;->access$202(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 3814
    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;->access$302(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;Ljava/lang/String;)Ljava/lang/String;

    .line 3815
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 3822
    .end local v3    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v8    # "aSeriesId":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "len$":I
    .end local v16    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .end local v20    # "timerDeleteItem":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;
    :catch_1
    move-exception v11

    .line 3823
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_6
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3827
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catchall_1
    move-exception v2

    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3788
    .restart local v3    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .restart local v8    # "aSeriesId":Ljava/lang/String;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v15    # "len$":I
    :cond_2
    add-int/lit8 v12, v13, 0x1

    .local v12, "i$":I
    move v13, v12

    .end local v12    # "i$":I
    .restart local v13    # "i$":I
    goto/16 :goto_0

    .line 3818
    .end local v3    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v8    # "aSeriesId":Ljava/lang/String;
    :cond_3
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlsetTransactionSuccessful()V
    :try_end_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3819
    const/4 v10, 0x1

    .line 3827
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 3824
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    :catch_2
    move-exception v11

    .line 3825
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v2, 0x1

    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3827
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    goto/16 :goto_2

    .line 3841
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_4
    const/16 v2, 0x3e9

    monitor-exit v22
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    return v2
.end method

.method public deleteSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)I
    .locals 8
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    .line 1050
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 1055
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 1057
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForDeleteSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1058
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v6, "Illegal parameter"

    invoke-direct {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1088
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1061
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1065
    .local v3, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1066
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    invoke-virtual {v6, v7, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->deleteAlarmTimer(Landroid/content/Context;I)V

    .line 1065
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1069
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-virtual {v4, p1, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->deleteScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;II)I

    move-result v0

    .line 1074
    .local v0, "deletecount":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v0, :cond_2

    .line 1075
    const-string v4, "An Exception has occurred!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1076
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v6, "Inner Error"

    invoke-direct {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1078
    .end local v0    # "deletecount":I
    :catch_0
    move-exception v1

    .line 1079
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v4, 0x1

    :try_start_3
    invoke-direct {p0, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 1087
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_2
    const/16 v4, 0x3e9

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v4
.end method

.method public deleteScheduleAll(I)V
    .locals 11
    .param p1, "aScheduleType"    # I

    .prologue
    const v10, 0xffff

    .line 2182
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 2187
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 2189
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForDeleteScheduleAll(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2190
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "Illegal parameter"

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2236
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2194
    :cond_0
    const/4 v2, 0x1

    .line 2195
    .local v2, "repeat":I
    :try_start_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2196
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    iput p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2199
    if-ne p1, v10, :cond_1

    .line 2200
    const/4 v2, 0x3

    .line 2205
    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v8

    .line 2210
    .local v8, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    if-ne p1, v10, :cond_4

    .line 2214
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 2215
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    invoke-virtual {v3, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->deleteAlarmTimer(Landroid/content/Context;I)V

    .line 2214
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2218
    :cond_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->reconstructionScheduleDatabase()V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2236
    .end local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v7    # "i":I
    .end local v8    # "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2237
    return-void

    .line 2222
    .restart local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .restart local v8    # "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :cond_4
    :try_start_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2224
    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonDeleteScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IZLjava/util/List;)V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2227
    .end local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v8    # "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :catch_0
    move-exception v6

    .line 2228
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v0, 0x1

    :try_start_4
    invoke-direct {p0, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method deleteScheduleAtForSession(Ljava/lang/String;JLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aTriggerTime"    # J
    .param p4, "aPackageName"    # Ljava/lang/String;
    .param p5, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 3326
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 3332
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 3334
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForDeleteScheduleAtForSession(Ljava/lang/String;JLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3336
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v6, "Illegal parameter"

    invoke-direct {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3368
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3339
    :cond_0
    :try_start_1
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 3340
    .local v2, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/4 v4, 0x3

    iput v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 3342
    iput-object p1, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 3343
    iput-object p4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 3345
    invoke-direct {p0, v2, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeywordAndTime(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;J)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 3348
    .local v3, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 3350
    invoke-direct {p0, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkCancelbyUser(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3355
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {p0, v4, v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSeriesScheduleDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;ZZ)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3357
    :catch_0
    move-exception v0

    .line 3358
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;
    :try_start_3
    const-string v4, "Cancellation requests received"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3367
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;
    :cond_1
    const/16 v4, 0x3e9

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v4
.end method

.method deleteScheduleForSession(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 12
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 3233
    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v11

    .line 3239
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 3241
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForDeleteScheduleForSession(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3243
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3292
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3246
    :cond_0
    :try_start_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 3247
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/4 v0, 0x3

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 3249
    iput-object p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 3250
    iput-object p2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 3254
    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v10

    .line 3257
    .local v10, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v6, 0x0

    .line 3258
    .local v6, "doDeleteTimer":Z
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlStartTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3260
    :try_start_2
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 3262
    .local v9, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    invoke-direct {p0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkCancelbyUser(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3266
    const/4 v0, 0x0

    invoke-direct {p0, v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSeriesScheduleDeleteNoCommit(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 3270
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :catch_0
    move-exception v7

    .line 3271
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;
    :try_start_3
    const-string v0, "Cancellation requests received"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3277
    :try_start_4
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    .line 3279
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;
    :goto_1
    if-eqz v6, :cond_2

    .line 3280
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 3281
    .restart local v9    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    const/4 v0, 0x0

    invoke-direct {p0, v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonAlarmTimerDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 3268
    .end local v9    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlsetTransactionSuccessful()V
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3269
    const/4 v6, 0x1

    .line 3277
    :try_start_6
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 3272
    .end local v8    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v7

    .line 3273
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3277
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catchall_1
    move-exception v0

    :try_start_8
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3274
    :catch_2
    move-exception v7

    .line 3275
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v0, 0x1

    :try_start_9
    invoke-direct {p0, v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3277
    :try_start_a
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    goto :goto_1

    .line 3291
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_2
    const/16 v0, 0x3e9

    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return v0
.end method

.method deleteSeriesForSession(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 16
    .param p1, "aSeriesId"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 3664
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v15

    .line 3670
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 3672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForDeleteSeriesForSession(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3674
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "Illegal parameter"

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3732
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3678
    :cond_0
    :try_start_1
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 3679
    .local v3, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/16 v2, 0x1005

    iput v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 3683
    move-object/from16 v0, p2

    iput-object v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 3686
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeywordAndSeriesId(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v12

    .line 3688
    .local v12, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/16 v2, 0x800

    iput v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 3689
    move-object/from16 v0, p1

    iput-object v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 3690
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v14

    .line 3693
    .local v14, "serieslist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v8, 0x0

    .line 3694
    .local v8, "doDeleteTimer":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlStartTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3699
    :try_start_2
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 3700
    .local v13, "series":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkCancelbyUser(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3701
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSeriesScheduleDeleteNoCommit(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 3710
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "series":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :catch_0
    move-exception v9

    .line 3711
    .local v9, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;
    :try_start_3
    const-string v2, "Cancellation requests received"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3717
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    .line 3719
    .end local v9    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;
    :goto_1
    if-eqz v8, :cond_3

    .line 3720
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 3721
    .local v11, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonAlarmTimerDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 3703
    .end local v11    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_1
    :try_start_5
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 3705
    .restart local v11    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkCancelbyUser(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3706
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSeriesScheduleDeleteNoCommit(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 3712
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :catch_1
    move-exception v9

    .line 3713
    .local v9, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3717
    .end local v9    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catchall_1
    move-exception v2

    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3708
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlsetTransactionSuccessful()V
    :try_end_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3709
    const/4 v8, 0x1

    .line 3717
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 3714
    .end local v10    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v9

    .line 3715
    .local v9, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v2, 0x1

    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3717
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    goto :goto_1

    .line 3731
    .end local v9    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_3
    const/16 v2, 0x3e9

    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    return v2
.end method

.method public deleteStRecSchedule(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I
    .locals 14
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aTriggerTime"    # J
    .param p4, "aSeriesID"    # Ljava/lang/String;
    .param p5, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1193
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    const-string v3, "Recoding Module Unsupported"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1195
    :cond_0
    iget-object v13, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v13

    .line 1200
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 1202
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForDeleteStSchedule(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1204
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "Illegal parameter"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1243
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1207
    :cond_1
    :try_start_1
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 1208
    .local v10, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/16 v2, 0x1000

    iput v2, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 1209
    iput-object p1, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 1210
    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 1212
    move-wide/from16 v0, p2

    invoke-direct {p0, v10, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeywordAndTime(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;J)Ljava/util/List;

    move-result-object v11

    .line 1215
    .local v11, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ge v9, v2, :cond_4

    .line 1219
    if-nez p4, :cond_3

    .line 1222
    :try_start_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    invoke-virtual {v3, v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->deleteAlarmTimer(Landroid/content/Context;I)V

    .line 1224
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->deleteScheduleData(J)I

    move-result v12

    .line 1225
    .local v12, "resultcount":I
    const/4 v2, 0x1

    if-eq v12, v2, :cond_2

    .line 1226
    const-string v2, "An Exception has occurred!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1227
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v3, "Inner Error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1229
    .end local v12    # "resultcount":I
    :catch_0
    move-exception v8

    .line 1230
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v2, 0x1

    :try_start_3
    invoke-direct {p0, v8, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 1215
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1233
    :cond_3
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSeriesScheduleDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 1242
    :cond_4
    const/16 v2, 0x3e9

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v2
.end method

.method public deleteStRecScheduleByUser(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I
    .locals 14
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aTriggerTime"    # J
    .param p4, "aSeriesID"    # Ljava/lang/String;
    .param p5, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 1280
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1281
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    const-string v3, "Recoding Module Unsupported"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1283
    :cond_0
    iget-object v13, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v13

    .line 1288
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 1290
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForDeleteStSchedule(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1292
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "Illegal parameter"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1336
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1295
    :cond_1
    :try_start_1
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 1296
    .local v10, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/16 v2, 0x1000

    iput v2, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 1297
    iput-object p1, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 1298
    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 1300
    move-wide/from16 v0, p2

    invoke-direct {p0, v10, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeywordAndTime(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;J)Ljava/util/List;

    move-result-object v11

    .line 1304
    .local v11, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ge v9, v2, :cond_5

    .line 1308
    if-nez p4, :cond_4

    .line 1311
    const/4 v3, 0x2

    :try_start_2
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    if-ne v3, v2, :cond_3

    .line 1312
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    const-string v3, "This schedule is finish flg ON"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1322
    :catch_0
    move-exception v8

    .line 1323
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v2, 0x1

    :try_start_3
    invoke-direct {p0, v8, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1304
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1315
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    invoke-virtual {v3, v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->deleteAlarmTimer(Landroid/content/Context;I)V

    .line 1317
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->deleteScheduleData(J)I

    move-result v12

    .line 1318
    .local v12, "resultcount":I
    const/4 v2, 0x1

    if-eq v12, v2, :cond_2

    .line 1319
    const-string v2, "An Exception has occurred!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1320
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v3, "Inner Error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1326
    .end local v12    # "resultcount":I
    :cond_4
    :try_start_5
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSeriesScheduleDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 1335
    :cond_5
    const/16 v2, 0x3e9

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return v2
.end method

.method public dispatchSpecificAction(Landroid/content/Intent;)V
    .locals 5
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->isEnableBackgroundOperation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    const-string v1, "Background operation is disabled."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    :goto_0
    return-void

    .line 271
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->executeScheduleProcess(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "ServiceArgumentException=%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 274
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 275
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "ServiceFatalException=%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto :goto_0
.end method

.method public executeScheduleProcess(Landroid/content/Intent;)V
    .locals 21
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 2688
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    move-result-object v15

    .line 2691
    .local v15, "sleepcontrol":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
    if-nez p1, :cond_0

    .line 2692
    new-instance v17, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v18, "Illegal null parameter"

    invoke-direct/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2695
    :cond_0
    const-string v17, "_id"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 2696
    .local v14, "recordid":I
    if-gez v14, :cond_1

    .line 2697
    const-string v17, "Illegal Intent data _id[%d]"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2797
    :goto_0
    return-void

    .line 2704
    :cond_1
    const-string v17, "ALARMTIME"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2705
    .local v4, "alarmtime":J
    const-wide/16 v18, 0x0

    cmp-long v17, v4, v18

    if-gez v17, :cond_2

    .line 2706
    const-string v17, "Illegal Intent data alarmtime[%d]"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2707
    invoke-virtual {v15, v14}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->releaseDevice(I)V

    goto :goto_0

    .line 2718
    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2726
    .local v8, "devicetime":J
    sub-long v18, v8, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    .line 2727
    .local v10, "difftime":J
    const-wide/16 v18, 0x7530

    cmp-long v17, v10, v18

    if-lez v17, :cond_3

    .line 2728
    const-string v17, "Don\' process <param>devicetime[%d], alarmtime[%d], difftime[%d]"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2730
    invoke-virtual {v15, v14}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->releaseDevice(I)V

    goto :goto_0

    .line 2719
    .end local v8    # "devicetime":J
    .end local v10    # "difftime":J
    :catch_0
    move-exception v12

    .line 2720
    .local v12, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const-string v17, "Get SecureClock Error [%s]"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2721
    invoke-virtual {v15, v14}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->releaseDevice(I)V

    .line 2722
    throw v12

    .line 2737
    .end local v12    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .restart local v8    # "devicetime":J
    .restart local v10    # "difftime":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpen()Z

    move-result v17

    if-nez v17, :cond_4

    .line 2742
    invoke-virtual {v15, v14}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->releaseDevice(I)V

    goto/16 :goto_0

    .line 2750
    :cond_4
    const v17, 0xffff

    const/16 v18, 0x3

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonGetScheduleDataCount(IIZ)I

    move-result v6

    .line 2753
    .local v6, "allcount":I
    if-nez v6, :cond_5

    .line 2757
    invoke-virtual {v15, v14}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->releaseDevice(I)V

    goto/16 :goto_0

    .line 2765
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->executeScheduleProcessUpdate(I)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    move-result-object v13

    .line 2766
    .local v13, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    if-nez v13, :cond_6

    .line 2770
    invoke-virtual {v15, v14}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->releaseDevice(I)V

    goto/16 :goto_0

    .line 2776
    :cond_6
    iget v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const-string v17, "ON_PAUSE"

    iget-object v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork3:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2781
    invoke-virtual {v15, v14}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->releaseDevice(I)V

    goto/16 :goto_0

    .line 2788
    :cond_7
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;-><init>()V

    .line 2789
    .local v7, "control":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;
    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setMode(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2790
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setContext(Landroid/content/Context;)V

    .line 2791
    invoke-virtual {v7, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setDataRecord(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    .line 2792
    new-instance v16, Ljava/lang/Thread;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2793
    .local v16, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public finalizeSchedule()V
    .locals 2

    .prologue
    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->closeDatabase()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0
.end method

.method public getFcPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2267
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 2269
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForGetFcPackageName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2270
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2273
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2274
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/4 v0, 0x4

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2275
    iput-object p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 2279
    const/4 v3, 0x3

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v6

    .line 2285
    .local v6, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2316
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 2318
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForGetFcPackageName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2319
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2322
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2323
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/16 v0, 0x1000

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2324
    iput-object p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 2328
    const/4 v3, 0x3

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v6

    .line 2334
    .local v6, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatSchedule(I)J
    .locals 10
    .param p1, "aScheduleType"    # I

    .prologue
    const/4 v4, 0x1

    .line 2580
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 2582
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForGetRepeatSchedule(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2583
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2585
    :cond_0
    const-wide/16 v8, 0x0

    .line 2587
    .local v8, "triggertime":J
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2588
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    iput p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2591
    const/4 v2, 0x2

    const/4 v3, 0x3

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v6

    .line 2595
    .local v6, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-wide v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    .line 2599
    return-wide v8
.end method

.method public getReservedSchedule(ILjava/util/ArrayList;)V
    .locals 9
    .param p1, "aScheduleType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aScheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v8, 0x1

    .line 1640
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 1642
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForGetReservedSchedule(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1644
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1648
    :cond_0
    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 1649
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    iput p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 1650
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IILjava/util/List;Ljava/util/List;)I

    move-result v7

    .line 1654
    .local v7, "getcount":I
    if-gtz v7, :cond_2

    .line 1658
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    const-string v2, "Schedule was not found"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 1665
    .end local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v7    # "getcount":I
    :catch_0
    move-exception v6

    .line 1666
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 1671
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_1
    return-void

    .line 1661
    .restart local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .restart local v7    # "getcount":I
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v7, v0, :cond_1

    .line 1662
    const-string v0, "An Exception has occurred!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1663
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v2, "Inner Error"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getSchedule(ILjava/util/ArrayList;)V
    .locals 9
    .param p1, "aScheduleType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aScheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v8, 0x1

    .line 1579
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 1581
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForGetSchedule(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1582
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1586
    :cond_0
    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 1587
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    iput p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 1588
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v5, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IILjava/util/List;Ljava/util/List;)I

    move-result v7

    .line 1592
    .local v7, "getcount":I
    if-gtz v7, :cond_2

    .line 1596
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    const-string v2, "Schedule was not found"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 1603
    .end local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v7    # "getcount":I
    :catch_0
    move-exception v6

    .line 1604
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 1609
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_1
    return-void

    .line 1599
    .restart local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .restart local v7    # "getcount":I
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v7, v0, :cond_1

    .line 1600
    const-string v0, "An Exception has occurred!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1601
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v2, "Inner Error"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getSeries(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "aSeriesDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;>;"
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 3042
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 3044
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForGetSeries(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3045
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3048
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 3049
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/16 v0, 0x800

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 3053
    const/4 v3, 0x3

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v11

    .line 3057
    .local v11, "serieslist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 3102
    :cond_1
    return-void

    .line 3067
    :cond_2
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$3;

    invoke-direct {v6, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;)V

    .line 3073
    .local v6, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    invoke-static {v11, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3081
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 3082
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    .line 3083
    .local v10, "seriesid":Ljava/lang/String;
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 3086
    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 3087
    invoke-direct {p0, v1, v10, v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeywordAndSeriesId(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v12

    .line 3090
    .local v12, "stlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v0, 0x4

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 3091
    invoke-direct {p0, v1, v10, v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeywordAndSeriesId(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v7

    .line 3093
    .local v7, "fclist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;

    invoke-direct {v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;-><init>()V

    .line 3094
    .local v9, "reservedata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-virtual {v3, v0, v12, v7, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->convertToSeriesReserveData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/util/List;Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;)V

    .line 3097
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3081
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public getStRecPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 5227
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 5229
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForGetStRecPackageName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5230
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5233
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 5234
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/16 v0, 0x1000

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 5235
    iput-object p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 5239
    const/4 v3, 0x3

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v6

    .line 5245
    .local v6, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public initializeSchedule()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 337
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->openDatabase()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    iget-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->databaseBrokenFlag:Z

    if-eqz v3, :cond_1

    .line 345
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->reconstructionScheduleDatabase()V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    :goto_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;-><init>()V

    .line 351
    .local v0, "control":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setMode(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 352
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setContext(Landroid/content/Context;)V

    .line 353
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 354
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 356
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->databaseBrokenFlag:Z

    .line 379
    .end local v0    # "control":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_0
    :goto_2
    return-void

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0

    .line 346
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :catch_1
    move-exception v1

    .line 347
    .restart local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_1

    .line 365
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->organizeSchedule()V

    .line 366
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->organizeSeries()V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->executeTaskUnexpectSchedule()V

    .line 372
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->executeTaskUnexpectScheduleRec()V

    goto :goto_2

    .line 367
    :catch_2
    move-exception v1

    .line 368
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_3
    const-string v3, "ServiceInternalException=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 371
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->executeTaskUnexpectSchedule()V

    .line 372
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->executeTaskUnexpectScheduleRec()V

    goto :goto_2

    .line 371
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->executeTaskUnexpectSchedule()V

    .line 372
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 373
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->executeTaskUnexpectScheduleRec()V

    :cond_2
    throw v3
.end method

.method public isFcScheduleTimerFinished(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 2366
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 2368
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForIsFcScheduleTimerFinished(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2369
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2372
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2373
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/4 v0, 0x4

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2374
    iput-object p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 2375
    iput-object p2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 2379
    const/4 v3, 0x3

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v6

    .line 2382
    .local v6, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v7, 0x1

    .line 2383
    .local v7, "result":Z
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    move v8, v7

    .line 2398
    .end local v7    # "result":Z
    .local v8, "result":I
    :goto_0
    return v8

    .line 2392
    .end local v8    # "result":I
    .restart local v7    # "result":Z
    :cond_1
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    if-ne v0, v2, :cond_2

    .line 2393
    const/4 v7, 0x0

    :cond_2
    move v8, v7

    .line 2398
    .restart local v8    # "result":I
    goto :goto_0
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 2
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$2;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 317
    :cond_0
    return-void
.end method

.method public organizeSchedule()V
    .locals 11

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 1933
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2009
    :cond_0
    :goto_0
    return-void

    .line 1944
    :cond_1
    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseBroken(Z)V

    .line 1946
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->setDeltaTime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 1949
    const v1, 0xffff

    invoke-direct {p0, v1, v5, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonGetScheduleDataCount(IIZ)I

    move-result v0

    .line 1952
    .local v0, "allcount":I
    if-eqz v0, :cond_0

    .line 1963
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getClockFromMyself(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v2

    .line 1966
    .local v2, "basetime":J
    const/4 v9, 0x0

    .line 1967
    .local v9, "getcount":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1971
    .local v6, "schedulelist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getPastTimeScheduleData(JIILjava/util/List;Ljava/util/List;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1975
    if-gtz v9, :cond_3

    .line 1996
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->deleteAndUpdatePastTimeScheduleData(J)I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_1

    .line 2002
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setTimerPreSchedule()V

    .line 2004
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v1, v9, v6, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->executeDelayScheduleForOrganizeSchedule(ILjava/util/List;Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    goto :goto_0

    .line 1981
    :cond_3
    :try_start_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-eq v9, v1, :cond_2

    .line 1982
    const-string v1, "An Exception has occurred!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1983
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v4, "Inner Error"

    invoke-direct {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_0

    .line 1986
    :catch_0
    move-exception v8

    .line 1987
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v8, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 1988
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v4, "Inner Error"

    invoke-direct {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1997
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :catch_1
    move-exception v8

    .line 1998
    .restart local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v8, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 1999
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v4, "Inner Error"

    invoke-direct {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public organizeSeries()V
    .locals 28

    .prologue
    .line 2031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2036
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpen()Z

    move-result v24

    if-nez v24, :cond_0

    .line 2044
    monitor-exit v25

    .line 2157
    :goto_0
    return-void

    .line 2047
    :cond_0
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseBroken(Z)V

    .line 2049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->setDeltaTime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getClockFromMyself(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v6

    .line 2052
    .local v6, "basetime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->seriesExpiredDate:J

    move-wide/from16 v26, v0

    sub-long v10, v6, v26

    .line 2053
    .local v10, "expiredtime":J
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2055
    .local v20, "seriesCridlist":[Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getExpirationOfSeriesCRID(JJ)[Ljava/lang/String;

    move-result-object v20

    .line 2056
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v24, :cond_1

    .line 2063
    :try_start_2
    monitor-exit v25

    goto :goto_0

    .line 2156
    .end local v6    # "basetime":J
    .end local v10    # "expiredtime":J
    .end local v20    # "seriesCridlist":[Ljava/lang/String;
    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v24

    .line 2065
    .restart local v6    # "basetime":J
    .restart local v10    # "expiredtime":J
    .restart local v20    # "seriesCridlist":[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2066
    .local v9, "e1":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/16 v24, 0x0

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v9, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 2069
    .end local v9    # "e1":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_1
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2070
    .local v15, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/16 v24, 0x1005

    move/from16 v0, v24

    iput v0, v15, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlStartTransaction()V

    .line 2075
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2076
    .local v5, "deleteTimerRecordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2078
    .local v19, "seriesChildMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[Ljava/lang/String;>;"
    move-object/from16 v4, v20

    .local v4, "arr$":[Ljava/lang/String;
    :try_start_4
    array-length v0, v4

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    move v13, v12

    .end local v12    # "i$":I
    .local v13, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_6

    aget-object v21, v4, v13
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2080
    .local v21, "seriesId":Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-object/from16 v24, v0

    const/16 v26, 0x1

    const/16 v27, 0x3

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getSeriesIdScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/lang/String;II)Ljava/util/Map;
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v19

    .line 2087
    :goto_2
    :try_start_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v13    # "i$":I
    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 2088
    .local v18, "seriesChild":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 2089
    .local v22, "thisId":I
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2091
    .local v23, "thisSeriesId":[Ljava/lang/String;
    const/16 v17, 0x0

    .line 2092
    .local v17, "resultcount":I
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableDeleteSeriesId([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 2096
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    const-string v26, "Series ID was not found"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2112
    :catch_1
    move-exception v8

    .line 2113
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/16 v24, 0x1

    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v8, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V
    :try_end_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 2124
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "len$":I
    .end local v17    # "resultcount":I
    .end local v18    # "seriesChild":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[Ljava/lang/String;>;"
    .end local v21    # "seriesId":Ljava/lang/String;
    .end local v22    # "thisId":I
    .end local v23    # "thisSeriesId":[Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 2125
    .restart local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/16 v24, 0x1

    :try_start_9
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v8, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2127
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    .line 2145
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :goto_4
    const/16 v24, 0x20

    invoke-static/range {v24 .. v24}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 2146
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 2147
    .local v14, "id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerThreadPool:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v24, v0

    new-instance v26, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbDeleteAlarmWorker;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbDeleteAlarmWorker;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 2084
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "id":I
    .restart local v13    # "i$":I
    .restart local v16    # "len$":I
    .restart local v21    # "seriesId":Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 2085
    .restart local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/16 v24, 0x0

    :try_start_b
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v8, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V
    :try_end_b
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    .line 2127
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v21    # "seriesId":Ljava/lang/String;
    :catchall_1
    move-exception v24

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    throw v24
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2098
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v16    # "len$":I
    .restart local v17    # "resultcount":I
    .restart local v18    # "seriesChild":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[Ljava/lang/String;>;"
    .restart local v21    # "seriesId":Ljava/lang/String;
    .restart local v22    # "thisId":I
    .restart local v23    # "thisSeriesId":[Ljava/lang/String;
    :cond_3
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->deleteDataSeriesIdArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 2100
    if-eqz v23, :cond_4

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-object/from16 v24, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->updateScheduleSeriesId(J[Ljava/lang/String;)I

    move-result v17

    .line 2107
    :goto_6
    const/16 v24, 0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 2108
    const-string v24, "An Exception has occurred!"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2109
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v26, "Inner Error"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 2104
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-object/from16 v24, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->deleteScheduleData(J)I

    move-result v17

    .line 2105
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_6

    .line 2078
    .end local v17    # "resultcount":I
    .end local v18    # "seriesChild":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[Ljava/lang/String;>;"
    .end local v22    # "thisId":I
    .end local v23    # "thisSeriesId":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v12, v13, 0x1

    .local v12, "i$":I
    move v13, v12

    .end local v12    # "i$":I
    .restart local v13    # "i$":I
    goto/16 :goto_1

    .line 2117
    .end local v21    # "seriesId":Ljava/lang/String;
    :cond_6
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->deleteExpirationOfSeriesCrid(JJ)I

    move-result v17

    .line 2119
    .restart local v17    # "resultcount":I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    .line 2120
    const-string v24, "An Exception has occurred!"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2121
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v26, "Inner Error"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 2123
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlsetTransactionSuccessful()V
    :try_end_e
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2127
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    goto/16 :goto_4

    .line 2149
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "resultcount":I
    .local v12, "i$":Ljava/util/Iterator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerThreadPool:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2156
    monitor-exit v25
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0
.end method

.method public pauseRepeatSchedule(I)V
    .locals 3
    .param p1, "aScheduleType"    # I

    .prologue
    .line 2621
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 2623
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForPauseRepeatSchedule(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2624
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2627
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    const-string v2, "ON_PAUSE"

    invoke-virtual {v1, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->updateRepeatScheduleOnPause(ILjava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 2634
    :goto_0
    return-void

    .line 2628
    :catch_0
    move-exception v0

    .line 2629
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0
.end method

.method public resumeRepeatSchedule(I)V
    .locals 3
    .param p1, "aScheduleType"    # I

    .prologue
    .line 2655
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 2657
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForPauseRepeatSchedule(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2658
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2661
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->updateRepeatScheduleOnPause(ILjava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 2668
    :goto_0
    return-void

    .line 2662
    :catch_0
    move-exception v0

    .line 2663
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0
.end method

.method public searchReservedSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "aSearchKeyword"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aScheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v8, 0x1

    .line 1762
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 1764
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForSearchSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1766
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->changeParameterForSearchReservedSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    move-result-object v1

    .line 1773
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IILjava/util/List;Ljava/util/List;)I

    move-result v7

    .line 1777
    .local v7, "getcount":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v7, v0, :cond_1

    .line 1778
    const-string v0, "An Exception has occurred!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1779
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v2, "Inner Error"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    .end local v7    # "getcount":I
    :catch_0
    move-exception v6

    .line 1782
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 1787
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_1
    return-void
.end method

.method public searchReservedSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "aSearchString"    # Ljava/lang/String;
    .param p2, "aSortString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "aScheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1888
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 1890
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1891
    :cond_0
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "Illegal null parameter"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1895
    :cond_1
    const/4 v3, 0x2

    :try_start_0
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 1897
    .local v1, "flags":[I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v3, p1, p2, v1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleDataFromQuery(Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;)I

    move-result v2

    .line 1900
    .local v2, "getcount":I
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1901
    const-string v3, "An Exception has occurred!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1902
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v4, "Inner Error"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_1

    .line 1904
    .end local v1    # "flags":[I
    .end local v2    # "getcount":I
    :catch_0
    move-exception v0

    .line 1905
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "ServiceArgumentException Reason param = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    aput-object p3, v4, v7

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1907
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "Illegal parameter "

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1908
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 1909
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 1914
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_2
    return-void

    .line 1895
    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method public searchSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "aSearchKeyword"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aScheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v8, 0x1

    .line 1703
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 1705
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForSearchSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1707
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1711
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IILjava/util/List;Ljava/util/List;)I

    move-result v7

    .line 1715
    .local v7, "getcount":I
    if-gtz v7, :cond_2

    .line 1719
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    const-string v1, "Schedule was not found"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 1726
    .end local v7    # "getcount":I
    :catch_0
    move-exception v6

    .line 1727
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 1732
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_1
    return-void

    .line 1722
    .restart local v7    # "getcount":I
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v7, v0, :cond_1

    .line 1723
    const-string v0, "An Exception has occurred!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1724
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v1, "Inner Error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public searchSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "aSearchString"    # Ljava/lang/String;
    .param p2, "aSortString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "aScheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1822
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 1824
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1825
    :cond_0
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "Illegal null parameter"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1829
    :cond_1
    const/4 v3, 0x2

    :try_start_0
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 1831
    .local v1, "flags":[I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v3, p1, p2, v1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleDataFromQuery(Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;)I

    move-result v2

    .line 1834
    .local v2, "getcount":I
    if-gtz v2, :cond_2

    .line 1838
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    const-string v4, "Schedule was not found"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_1

    .line 1845
    .end local v1    # "flags":[I
    .end local v2    # "getcount":I
    :catch_0
    move-exception v0

    .line 1846
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "ServiceArgumentException Reason param = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    aput-object p3, v4, v7

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1848
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "Illegal parameter "

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1841
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v1    # "flags":[I
    .restart local v2    # "getcount":I
    :cond_2
    :try_start_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1842
    const-string v3, "An Exception has occurred!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1843
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v4, "Inner Error"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_1

    .line 1849
    .end local v1    # "flags":[I
    .end local v2    # "getcount":I
    :catch_1
    move-exception v0

    .line 1850
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-direct {p0, v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 1855
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_3
    return-void

    .line 1829
    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data
.end method

.method public setFcPlaySchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aIntentPackageName"    # Ljava/lang/String;
    .param p4, "aIntentClassName"    # Ljava/lang/String;

    .prologue
    .line 873
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 879
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 881
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForSetFcPlaySchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 886
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->omitMilliSecondTriggerTime(J)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 889
    const/4 v6, 0x0

    .line 891
    .local v6, "bookingrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_start_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0, p1, p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getDoubleBookingForSetScheduleForSession(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 898
    :goto_0
    :try_start_3
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;-><init>()V

    .line 899
    .local v1, "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->convertScheduleDataToRecordData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    .line 900
    const/4 v0, 0x1

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    .line 901
    const/4 v0, 0x1

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    .line 902
    iput-object p2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    .line 903
    iput-object p3, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentPackageName:Ljava/lang/String;

    .line 904
    iput-object p4, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentClassName:Ljava/lang/String;

    .line 905
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 906
    if-eqz v6, :cond_1

    .line 910
    iget v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    .line 915
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZZZ)V

    .line 928
    :goto_1
    const/16 v0, 0x3e9

    monitor-exit v8

    return v0

    .line 894
    .end local v1    # "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :catch_0
    move-exception v7

    .line 895
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v0, 0x1

    invoke-direct {p0, v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0

    .line 919
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .restart local v1    # "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSetSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 12
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, "aDoubleBookingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 766
    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v11

    .line 772
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 774
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForSetFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 779
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->omitMilliSecondTriggerTime(J)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    const/4 v6, 0x0

    .line 784
    .local v6, "bookingrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_start_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getDoubleBookingForSetFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 791
    :goto_0
    :try_start_3
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;-><init>()V

    .line 792
    .local v1, "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->convertScheduleDataToRecordData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    .line 793
    const/4 v0, 0x1

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    .line 794
    const/4 v0, 0x1

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    .line 795
    iput-object p2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    .line 796
    if-eqz v6, :cond_4

    .line 797
    iget v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    .line 799
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 800
    .local v10, "seriesidset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 803
    :cond_1
    iget-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 804
    iget-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 806
    :cond_2
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-ne v0, v4, :cond_3

    .line 807
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->addDataSeriesIdArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 817
    :goto_1
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZZZ)V

    .line 835
    .end local v10    # "seriesidset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    const/16 v0, 0x3e9

    monitor-exit v11

    return v0

    .line 787
    .end local v1    # "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :catch_0
    move-exception v7

    .line 788
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v0, 0x1

    invoke-direct {p0, v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0

    .line 810
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .restart local v1    # "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .restart local v10    # "seriesidset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 811
    .local v9, "seriesarray":[Ljava/lang/String;
    invoke-interface {v10, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 812
    iput-object v9, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    goto :goto_1

    .line 820
    .end local v9    # "seriesarray":[Ljava/lang/String;
    .end local v10    # "seriesidset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const/4 v8, 0x1

    .line 821
    .local v8, "initseriesid":Z
    iget-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 822
    const/4 v8, 0x0

    .line 826
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSetSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public setRepeatSchedule(IIII)I
    .locals 20
    .param p1, "aScheduleType"    # I
    .param p2, "aHour"    # I
    .param p3, "aMinute"    # I
    .param p4, "aSecond"    # I

    .prologue
    .line 2433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->setDeltaTime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 2439
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 2441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForSetRepeatSchedule(IIII)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2443
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v6, "Illegal parameter"

    invoke-direct {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2497
    :catchall_0
    move-exception v4

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2446
    :cond_0
    :try_start_1
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2447
    .local v5, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    move/from16 v0, p1

    iput v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2450
    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v16

    .line 2454
    .local v16, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 2457
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 2459
    .local v7, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->createRepeatTriggerTime(IIILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    .line 2465
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZZZ)V

    .line 2497
    .end local v7    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :goto_0
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2498
    const/16 v4, 0x3e9

    return v4

    .line 2471
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->createRepeatTriggerTime(IIILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v18

    .line 2475
    .local v18, "triggertime":J
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;-><init>()V

    .line 2476
    .restart local v7    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    move/from16 v0, p1

    iput v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    .line 2477
    move-wide/from16 v0, v18

    iput-wide v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    .line 2478
    const/4 v4, 0x2

    iput v4, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    .line 2479
    const/4 v4, 0x1

    iput v4, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    .line 2481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->setScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I

    move-result v13

    .line 2484
    .local v13, "recordid":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-wide v10, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    iget v12, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v14

    invoke-virtual/range {v8 .. v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->setAlarmTimer(Landroid/content/Context;JIILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2487
    .end local v7    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .end local v13    # "recordid":I
    .end local v18    # "triggertime":J
    :catch_0
    move-exception v15

    .line 2488
    .local v15, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v4, 0x1

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)I
    .locals 11
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    .line 436
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 441
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 443
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForSetSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 447
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->omitMilliSecondTriggerTime(J)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 450
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    const-wide/16 v4, 0x7530

    add-long v8, v2, v4

    .line 451
    .local v8, "checktime":J
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v0, v8, v9, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTriggerTime(JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;

    const-string v2, "Illegal past TriggerTime"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    :cond_1
    const/4 v6, 0x0

    .line 457
    .local v6, "bookingrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_start_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getDoubleBookingForSetSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 464
    :goto_0
    :try_start_3
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;-><init>()V

    .line 465
    .local v1, "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->convertScheduleDataToRecordData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    .line 466
    const/4 v0, 0x1

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    .line 467
    const/4 v0, 0x1

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    .line 468
    if-eqz v6, :cond_2

    .line 474
    iget v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    .line 475
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZZZ)V

    .line 487
    :goto_1
    const/16 v0, 0x3e9

    monitor-exit v10

    return v0

    .line 460
    .end local v1    # "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :catch_0
    move-exception v7

    .line 461
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v0, 0x1

    invoke-direct {p0, v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0

    .line 479
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .restart local v1    # "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSetSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method setScheduleForSession(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aIntentPackageName"    # Ljava/lang/String;
    .param p4, "aIntentClassName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 3139
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 3145
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 3147
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForSetScheduleForSession(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3149
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3202
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3152
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->omitMilliSecondTriggerTime(J)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 3155
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTriggerTime(JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3157
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;

    const-string v2, "Illegal mmbTriggerTime past"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3160
    :cond_1
    const/4 v6, 0x0

    .line 3162
    .local v6, "bookingrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_start_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0, p1, p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getDoubleBookingForSetScheduleForSession(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 3169
    :goto_0
    :try_start_3
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;-><init>()V

    .line 3170
    .local v1, "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->convertScheduleDataToRecordData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    .line 3171
    const/4 v0, 0x1

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    .line 3172
    const/4 v0, 0x1

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    .line 3173
    iput-object p2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    .line 3174
    iput-object p3, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentPackageName:Ljava/lang/String;

    .line 3175
    iput-object p4, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentClassName:Ljava/lang/String;

    .line 3176
    if-eqz v6, :cond_3

    .line 3180
    iget v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    .line 3181
    iget v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    if-ne v0, v5, :cond_2

    .line 3182
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    const-string v3, "crid://"

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->addDataSeriesIdArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 3188
    :goto_1
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZZZ)V

    .line 3201
    :goto_2
    const/16 v0, 0x3e9

    monitor-exit v8

    return v0

    .line 3165
    .end local v1    # "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :catch_0
    move-exception v7

    .line 3166
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v0, 0x1

    invoke-direct {p0, v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0

    .line 3186
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .restart local v1    # "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_2
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    goto :goto_1

    .line 3192
    :cond_3
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSetSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method setSeriesForSession(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 29
    .param p1, "aSeriesData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 3405
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 3407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForSetSeriesForSession(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3409
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "Illegal parameter"

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3413
    :cond_0
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 3414
    .local v3, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/16 v2, 0x800

    iput v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 3415
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    iput-object v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 3418
    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v21

    .line 3422
    .local v21, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3423
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "Series ID has already existed"

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3426
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->makeSeriesRecordFromReserveData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    move-result-object v24

    .line 3428
    .local v24, "seriesrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    if-nez v24, :cond_2

    .line 3429
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "Illegal parameter"

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3436
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    const/16 v4, 0x800

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableCountSchedule(IILcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3438
    const/16 v23, 0x800

    .line 3439
    .local v23, "scheduletype":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max Schedule Over ... ScheduleType["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3440
    .local v18, "message":Ljava/lang/String;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v2, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 3449
    .end local v18    # "message":Ljava/lang/String;
    .end local v23    # "scheduletype":I
    :catch_0
    move-exception v15

    .line 3450
    .local v15, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 3453
    .end local v15    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3454
    const/16 v16, 0x0

    .line 3457
    .local v16, "faillist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkCancelbyUser(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v2, v4, v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->reserveRecForSetSeries(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v16

    .line 3477
    :goto_0
    if-eqz v16, :cond_5

    .line 3478
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteRecContentForSetSeries(Ljava/lang/String;Ljava/lang/String;)V

    .line 3479
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v4, "Inner Error"

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3443
    .end local v16    # "faillist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableCountForSetSeriesStSchedule(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3445
    const/16 v23, 0x1

    .line 3446
    .restart local v23    # "scheduletype":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max Schedule Over ... ScheduleType["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3447
    .restart local v18    # "message":Ljava/lang/String;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v2, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_0

    .line 3462
    .end local v18    # "message":Ljava/lang/String;
    .end local v23    # "scheduletype":I
    .restart local v16    # "faillist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v15

    .line 3463
    .local v15, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;
    const-string v2, "Cancellation requests received"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3467
    const/16 v2, 0x3e9

    .line 3633
    .end local v15    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;
    .end local v16    # "faillist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return v2

    .line 3468
    .restart local v16    # "faillist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_2
    move-exception v15

    .line 3469
    .local v15, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteRecContentForSetSeries(Ljava/lang/String;Ljava/lang/String;)V

    .line 3470
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0

    .line 3471
    .end local v15    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :catch_3
    move-exception v15

    .line 3472
    .local v15, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    const-string v2, "Max Schedule Over ... message =  "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3473
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteRecContentForSetSeries(Ljava/lang/String;Ljava/lang/String;)V

    .line 3475
    throw v15

    .line 3485
    .end local v15    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    .end local v16    # "faillist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v11, 0x0

    .line 3488
    .local v11, "bookingcridlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkCancelbyUser(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesFcScheduleData:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v2, v4, v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->reserveDownloadForSetSeries(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Ljava/util/ArrayList;
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v11

    .line 3511
    :goto_2
    if-eqz v11, :cond_6

    .line 3512
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteFcContentForSetSeries(Ljava/lang/String;Ljava/lang/String;)V

    .line 3513
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CRID booking list["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    throw v2

    .line 3493
    :catch_4
    move-exception v15

    .line 3494
    .local v15, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;
    const-string v2, "Cancellation requests received"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3498
    const/16 v2, 0x3e9

    goto/16 :goto_1

    .line 3499
    .end local v15    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;
    :catch_5
    move-exception v15

    .line 3500
    .local v15, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    invoke-static {v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3501
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteFcContentForSetSeries(Ljava/lang/String;Ljava/lang/String;)V

    .line 3502
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_2

    .line 3503
    .end local v15    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :catch_6
    move-exception v15

    .line 3504
    .local v15, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    const-string v2, "Max Schedule Over ... message =  "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3505
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteFcContentForSetSeries(Ljava/lang/String;Ljava/lang/String;)V

    .line 3507
    throw v15

    .line 3519
    .end local v15    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->makeRealTimeRecordListFromReserveData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 3521
    .local v20, "realtimelist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 3528
    const/4 v14, 0x0

    .line 3529
    .local v14, "doSetTimer":Z
    :try_start_4
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 3530
    .local v25, "setTimerList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlStartTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3532
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSetScheduleNoCommit(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    .line 3534
    if-eqz v20, :cond_b

    .line 3535
    new-instance v19, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 3536
    .local v19, "realtimeScheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 3538
    .local v22, "rltmrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkCancelbyUser(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    invoke-virtual {v2, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->omitMilliSecondTriggerTime(J)J

    move-result-wide v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    .line 3544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTriggerTime(JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3547
    const/4 v12, 0x0

    .line 3548
    .local v12, "bookingrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->convertRecordDataToScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3551
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getDoubleBookingForSetScheduleForSession(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v12

    .line 3557
    :goto_4
    if-eqz v12, :cond_8

    .line 3558
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->bookingSeriesIdSet(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    .line 3559
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonUpdateScheduleNoCommit(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    .line 3563
    :goto_5
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 3570
    .end local v12    # "bookingrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "realtimeScheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v22    # "rltmrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :catch_7
    move-exception v15

    .line 3571
    .local v15, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;
    :try_start_8
    const-string v2, "Cancellation requests received"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    .line 3573
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteFcContentForSetSeries(Ljava/lang/String;Ljava/lang/String;)V

    .line 3577
    const/16 v2, 0x3e9

    monitor-exit v28

    goto/16 :goto_1

    .line 3629
    .end local v15    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;
    .end local v25    # "setTimerList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :catchall_0
    move-exception v2

    monitor-exit v28
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    .line 3554
    .restart local v12    # "bookingrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v19    # "realtimeScheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .restart local v22    # "rltmrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .restart local v25    # "setTimerList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :catch_8
    move-exception v15

    .line 3555
    .local v15, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v2, 0x1

    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V
    :try_end_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 3578
    .end local v12    # "bookingrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .end local v15    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "realtimeScheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v22    # "rltmrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :catch_9
    move-exception v15

    .line 3579
    .local v15, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    .line 3580
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteFcContentForSetSeries(Ljava/lang/String;Ljava/lang/String;)V

    .line 3581
    throw v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3561
    .end local v15    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .restart local v12    # "bookingrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v19    # "realtimeScheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .restart local v22    # "rltmrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_8
    :try_start_b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSetScheduleNoCommit(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V
    :try_end_b
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_b .. :try_end_b} :catch_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_b .. :try_end_b} :catch_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_c
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    .line 3582
    .end local v12    # "bookingrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "realtimeScheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v22    # "rltmrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :catch_a
    move-exception v15

    .line 3583
    .local v15, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V

    .line 3584
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteFcContentForSetSeries(Ljava/lang/String;Ljava/lang/String;)V

    .line 3585
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    .line 3595
    .end local v15    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :goto_6
    if-eqz v14, :cond_c

    .line 3596
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 3598
    .local v26, "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    move-object/from16 v0, v26

    iget v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/16 v4, 0x800

    if-eq v2, v4, :cond_9

    .line 3602
    :try_start_d
    move-object/from16 v0, v26

    iget v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    .line 3604
    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->playBeforeTime:J

    sub-long/2addr v4, v6

    move-object/from16 v0, v26

    iput-wide v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    .line 3607
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    move-object/from16 v0, v26

    iget v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    move-object/from16 v0, v26

    iget v9, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->setAlarmTimer(Landroid/content/Context;JIILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    :try_end_d
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_7

    .line 3610
    :catch_b
    move-exception v15

    .line 3611
    .restart local v15    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v2, 0x0

    :try_start_e
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_7

    .line 3567
    .end local v15    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v26    # "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_b
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlsetTransactionSuccessful()V

    .line 3568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlEndTransaction()V
    :try_end_f
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_f .. :try_end_f} :catch_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_f .. :try_end_f} :catch_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_c
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 3569
    const/4 v14, 0x1

    goto :goto_6

    .line 3586
    :catch_c
    move-exception v15

    .line 3587
    .local v15, "e":Ljava/lang/IllegalStateException;
    :try_start_10
    invoke-static {v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3588
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteFcContentForSetSeries(Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v4, "Inner Error"

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3590
    .end local v15    # "e":Ljava/lang/IllegalStateException;
    :catch_d
    move-exception v15

    .line 3591
    .local v15, "e":Landroid/database/SQLException;
    invoke-static {v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3592
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteFcContentForSetSeries(Ljava/lang/String;Ljava/lang/String;)V

    .line 3593
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v4, "Inner Error"

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3618
    .end local v15    # "e":Landroid/database/SQLException;
    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbReservedPackageName:Ljava/lang/String;

    .line 3619
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;

    invoke-direct {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;-><init>()V

    .line 3620
    .local v13, "control":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v13, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setMode(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 3621
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setContext(Landroid/content/Context;)V

    .line 3622
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setDataRecord(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    .line 3623
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setSeriesReserveData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;)V

    .line 3624
    new-instance v27, Ljava/lang/Thread;

    move-object/from16 v0, v27

    invoke-direct {v0, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3625
    .local v27, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Thread;->start()V

    .line 3629
    monitor-exit v28
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 3633
    const/16 v2, 0x3e9

    goto/16 :goto_1
.end method

.method public setStRecSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aIntentPackageName"    # Ljava/lang/String;
    .param p4, "aIntentClassName"    # Ljava/lang/String;

    .prologue
    .line 651
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v15

    .line 657
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 659
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForSetStRecSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 660
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v6, "Illegal parameter"

    invoke-direct {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 730
    :catchall_0
    move-exception v4

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 663
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForSetScheduleForSession(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 665
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v6, "Illegal parameter"

    invoke-direct {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 668
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    invoke-virtual {v4, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->omitMilliSecondTriggerTime(J)J

    move-result-wide v6

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    const/4 v10, 0x0

    .line 673
    .local v10, "bookingrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getDoubleBookingForSetRecSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 680
    :goto_0
    :try_start_3
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;-><init>()V

    .line 681
    .local v5, "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->convertScheduleDataToRecordData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    .line 682
    const/4 v4, 0x1

    iput v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    .line 683
    const/4 v4, 0x1

    iput v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    .line 684
    move-object/from16 v0, p2

    iput-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    .line 685
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentPackageName:Ljava/lang/String;

    .line 686
    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentClassName:Ljava/lang/String;

    .line 687
    if-eqz v10, :cond_5

    .line 691
    iget v4, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    iput v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    .line 693
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 694
    .local v14, "seriesidset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 695
    iget-object v4, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 697
    :cond_2
    iget-object v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 698
    iget-object v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 700
    :cond_3
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->addDataSeriesIdArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 711
    :goto_1
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZZZ)V

    .line 729
    .end local v14    # "seriesidset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    const/16 v4, 0x3e9

    monitor-exit v15

    return v4

    .line 676
    .end local v5    # "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :catch_0
    move-exception v11

    .line 677
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0

    .line 704
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .restart local v5    # "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .restart local v14    # "seriesidset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v4

    new-array v13, v4, [Ljava/lang/String;

    .line 705
    .local v13, "seriesarray":[Ljava/lang/String;
    invoke-interface {v14, v13}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 706
    iput-object v13, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    goto :goto_1

    .line 714
    .end local v13    # "seriesarray":[Ljava/lang/String;
    .end local v14    # "seriesidset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    const/4 v12, 0x1

    .line 715
    .local v12, "initseriesid":Z
    iget-object v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 716
    const/4 v12, 0x0

    .line 720
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSetSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public setStSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aIntentPackageName"    # Ljava/lang/String;
    .param p4, "aIntentClassName"    # Ljava/lang/String;

    .prologue
    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 533
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForSetStSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 536
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v6, "Illegal parameter"

    invoke-direct {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 615
    :catchall_0
    move-exception v4

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 539
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForSetScheduleForSession(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 541
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v6, "Illegal parameter"

    invoke-direct {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 544
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    invoke-virtual {v4, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->omitMilliSecondTriggerTime(J)J

    move-result-wide v6

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTriggerTime(JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 549
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;

    const-string v6, "Illegal mmbTriggerTime past"

    invoke-direct {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    :cond_2
    const/4 v10, 0x0

    .line 554
    .local v10, "bookingrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getDoubleBookingForSetScheduleForSession(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 561
    :goto_0
    :try_start_3
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;-><init>()V

    .line 562
    .local v5, "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->convertScheduleDataToRecordData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    .line 563
    const/4 v4, 0x1

    iput v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    .line 564
    const/4 v4, 0x1

    iput v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    .line 565
    move-object/from16 v0, p2

    iput-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    .line 566
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentPackageName:Ljava/lang/String;

    .line 567
    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentClassName:Ljava/lang/String;

    .line 568
    if-eqz v10, :cond_6

    .line 572
    iget v4, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    iput v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    .line 574
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 575
    .local v15, "seriesidset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 576
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    iget-object v4, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    array-length v4, v4

    if-ge v12, v4, :cond_3

    .line 577
    iget-object v4, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    aget-object v4, v4, v12

    invoke-interface {v15, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 576
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 557
    .end local v5    # "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .end local v12    # "i":I
    .end local v15    # "seriesidset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    .line 558
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0

    .line 580
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .restart local v5    # "setrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .restart local v15    # "seriesidset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    iget-object v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 581
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    iget-object v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    array-length v4, v4

    if-ge v12, v4, :cond_4

    .line 582
    iget-object v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    aget-object v4, v4, v12

    invoke-interface {v15, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 581
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 585
    .end local v12    # "i":I
    :cond_4
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    .line 586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->addDataSeriesIdArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 596
    :goto_3
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZZZ)V

    .line 614
    .end local v15    # "seriesidset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_4
    const/16 v4, 0x3e9

    monitor-exit v16

    return v4

    .line 589
    .restart local v15    # "seriesidset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v4

    new-array v14, v4, [Ljava/lang/String;

    .line 590
    .local v14, "seriesarray":[Ljava/lang/String;
    invoke-interface {v15, v14}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 591
    iput-object v14, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    goto :goto_3

    .line 599
    .end local v14    # "seriesarray":[Ljava/lang/String;
    .end local v15    # "seriesidset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const/4 v13, 0x1

    .line 600
    .local v13, "initseriesid":Z
    iget-object v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 601
    const/4 v13, 0x0

    .line 605
    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSetSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method public setupModule()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->seriesExpiredDate:J

    .line 191
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getPlayBeforeSecondTime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->playBeforeTime:J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->setConstantFromPreference()V

    .line 203
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1;

    invoke-direct {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 212
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 197
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 198
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startupModule()V
    .locals 4

    .prologue
    .line 150
    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;-><init>()V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->timerInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    .line 151
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    .line 152
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-static {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getInstance(Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    .line 155
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->openDatabase()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0
.end method

.method public updateFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;)I
    .locals 8
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 962
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 967
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 969
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForUpdateFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 974
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->omitMilliSecondTriggerTime(J)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 977
    const/4 v1, 0x0

    .line 979
    .local v1, "targetrecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_start_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->accessInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-virtual {v0, p1, p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getTargetForUpdateFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 986
    :goto_0
    if-nez v1, :cond_1

    .line 990
    :try_start_3
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    const-string v2, "Schedule was not found"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 982
    :catch_0
    move-exception v6

    .line 983
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const/4 v0, 0x1

    invoke-direct {p0, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->checkErrorCodeAndThrowException(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0

    .line 993
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :cond_1
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    iput-wide v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    .line 994
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbHistory:I

    .line 995
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReserveType:I

    .line 996
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentTitle:Ljava/lang/String;

    .line 997
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    iput-wide v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentStartTime:J

    .line 998
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    iput-wide v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentEndTime:J

    .line 999
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayTime:J

    iput-wide v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentPlayTime:J

    .line 1000
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayDate:J

    iput-wide v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentPlayDate:J

    .line 1001
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCntIndex:Ljava/lang/String;

    .line 1002
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentMedia:I

    .line 1003
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbServiceId:I

    .line 1004
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->copyStringArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 1005
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork1:I

    .line 1006
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    iput-wide v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork2:J

    .line 1007
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork3:Ljava/lang/String;

    .line 1012
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZZZ)V

    .line 1019
    const/16 v0, 0x3e9

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v0
.end method

.method public updateSeries(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;)V
    .locals 10
    .param p1, "aSeriesData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    .prologue
    .line 2976
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 2981
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonCheckDatabaseStatus()V

    .line 2983
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForUpdateSeries(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2984
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3014
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2987
    :cond_0
    :try_start_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2988
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/16 v0, 0x800

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2989
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 2992
    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonSearchScheduleKeyword(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IIZZ)Ljava/util/List;

    move-result-object v8

    .line 2996
    .local v8, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2997
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 2998
    .local v3, "updaterecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesTitle:Ljava/lang/String;

    iput-object v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentTitle:Ljava/lang/String;

    .line 2999
    iget-wide v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesStartTime:J

    iput-wide v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentStartTime:J

    .line 3000
    iget-wide v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesEndTime:J

    iput-wide v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentEndTime:J

    .line 3006
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->commonUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;ZZZZ)V

    .line 3014
    .end local v3    # "updaterecord":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3015
    return-void
.end method
