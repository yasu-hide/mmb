.class final Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;
.super Ljava/lang/Object;
.source "MmbTmGeneralSv.java"


# static fields
.field private static final ILLEGAL_SERIES_ID:[Ljava/lang/String;

.field private static final MASK_HISTORY_ALL:[I

.field private static final MASK_MEDIA_ALL:[I

.field private static final MASK_RESERVE_TYPE_ALL:[I

.field private static final MASK_SCHEDULE_TYPE_REPEAT:[I

.field private static myInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;


# instance fields
.field private deltatime:J

.field private isSetDeltatime:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_SCHEDULE_TYPE_REPEAT:[I

    .line 81
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_HISTORY_ALL:[I

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_RESERVE_TYPE_ALL:[I

    .line 91
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_MEDIA_ALL:[I

    .line 127
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "%"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->ILLEGAL_SERIES_ID:[Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->myInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    return-void

    .line 74
    :array_0
    .array-data 4
        0x80
        0x100
        0x20
        0x200
        0x400
    .end array-data

    .line 81
    :array_1
    .array-data 4
        0x1
        0x2
    .end array-data

    .line 85
    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x8
    .end array-data

    .line 91
    :array_3
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->deltatime:J

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isSetDeltatime:Z

    .line 156
    return-void
.end method

.method private checkMainService(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 3
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 4273
    if-nez p1, :cond_0

    .line 4275
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v1, -0x3e9

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4281
    :cond_0
    return-void
.end method

.method private checkReserveDownloadResult(I)Z
    .locals 6
    .param p1, "aResultId"    # I

    .prologue
    .line 4169
    const/4 v0, 0x1

    .line 4170
    .local v0, "checkresult":Z
    sparse-switch p1, :sswitch_data_0

    .line 4195
    const/4 v0, 0x0

    .line 4201
    :goto_0
    return v0

    .line 4179
    :sswitch_0
    const/4 v0, 0x1

    .line 4180
    goto :goto_0

    .line 4186
    :sswitch_1
    const/4 v3, 0x4

    .line 4187
    .local v3, "scheduletype":I
    move v1, p1

    .line 4188
    .local v1, "executionstate":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Max Schedule Over ... ScheduleType["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ExecutionState["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4190
    .local v2, "message":Ljava/lang/String;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;

    invoke-direct {v4, v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;-><init>(Ljava/lang/String;II)V

    throw v4

    .line 4170
    nop

    :sswitch_data_0
    .sparse-switch
        -0x28 -> :sswitch_1
        -0x1f -> :sswitch_0
        -0x1e -> :sswitch_0
        -0x1b -> :sswitch_0
        -0x13 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private checkReserveRecResult(I)Z
    .locals 6
    .param p1, "aResultId"    # I

    .prologue
    .line 4222
    const/4 v0, 0x1

    .line 4223
    .local v0, "checkresult":Z
    sparse-switch p1, :sswitch_data_0

    .line 4246
    const/4 v0, 0x0

    .line 4252
    :goto_0
    return v0

    .line 4230
    :sswitch_0
    const/4 v0, 0x1

    .line 4231
    goto :goto_0

    .line 4237
    :sswitch_1
    const/16 v3, 0x1000

    .line 4238
    .local v3, "scheduletype":I
    move v1, p1

    .line 4239
    .local v1, "executionstate":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Max Schedule Over ... ScheduleType["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ExecutionState["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4241
    .local v2, "message":Ljava/lang/String;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;

    invoke-direct {v4, v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;-><init>(Ljava/lang/String;II)V

    throw v4

    .line 4223
    :sswitch_data_0
    .sparse-switch
        -0x28 -> :sswitch_1
        -0x1e -> :sswitch_0
        -0x1b -> :sswitch_0
        -0x13 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private checkResult(I)Z
    .locals 1
    .param p1, "aParams"    # I

    .prologue
    .line 4059
    const/4 v0, 0x1

    .line 4060
    .local v0, "ret":Z
    if-eqz p1, :cond_0

    .line 4061
    const/4 v0, 0x0

    .line 4066
    :cond_0
    return v0
.end method

.method private executeDelayScheduleBTransmission(Ljava/util/List;Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 5
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1957
    .local p1, "aList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1958
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1959
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;-><init>()V

    .line 1960
    .local v2, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    iput v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    .line 1961
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    iput-object v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    .line 1962
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;-><init>()V

    .line 1963
    .local v0, "control":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setMode(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 1964
    invoke-virtual {v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setContext(Landroid/content/Context;)V

    .line 1965
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setDataRecord(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    .line 1966
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1967
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1958
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1973
    .end local v0    # "control":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;
    .end local v1    # "i":I
    .end local v2    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method private executeDelayScheduleFlag(ZLandroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)V
    .locals 4
    .param p1, "aFlag"    # Z
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p4, "aScheduleType"    # I

    .prologue
    .line 2401
    if-eqz p1, :cond_0

    .line 2402
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;-><init>()V

    .line 2403
    .local v1, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    iput p4, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    .line 2404
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;-><init>()V

    .line 2405
    .local v0, "control":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setMode(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2406
    invoke-virtual {v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setContext(Landroid/content/Context;)V

    .line 2407
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setDataRecord(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    .line 2408
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2409
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2414
    .end local v0    # "control":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;
    .end local v1    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method private executeDelayScheduleList(Ljava/util/List;Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)V
    .locals 4
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p4, "aScheduleType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1919
    .local p1, "aList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1920
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;-><init>()V

    .line 1921
    .local v1, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    iput p4, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    .line 1922
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;-><init>()V

    .line 1923
    .local v0, "control":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setMode(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 1924
    invoke-virtual {v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setContext(Landroid/content/Context;)V

    .line 1925
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setDataRecord(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    .line 1926
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->setDataSchedule(Ljava/util/List;)V

    .line 1927
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1928
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1933
    .end local v0    # "control":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;
    .end local v1    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method static getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->myInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    return-object v0
.end method

.method private getOneTimeScheduleMaxCount(I)I
    .locals 1
    .param p1, "aScheduleType"    # I

    .prologue
    .line 4086
    const/4 v0, 0x0

    .line 4087
    .local v0, "result":I
    sparse-switch p1, :sswitch_data_0

    .line 4148
    :goto_0
    return v0

    .line 4091
    :sswitch_0
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->maxCountStView:I

    .line 4092
    goto :goto_0

    .line 4095
    :sswitch_1
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->maxCountFcPlay:I

    .line 4096
    goto :goto_0

    .line 4099
    :sswitch_2
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->maxCountFcAccumulation:I

    .line 4100
    goto :goto_0

    .line 4103
    :sswitch_3
    const/16 v0, 0x28

    .line 4104
    goto :goto_0

    .line 4107
    :sswitch_4
    const/16 v0, 0x28

    .line 4108
    goto :goto_0

    .line 4111
    :sswitch_5
    const/16 v0, 0x28

    .line 4112
    goto :goto_0

    .line 4115
    :sswitch_6
    const/16 v0, 0x28

    .line 4116
    goto :goto_0

    .line 4119
    :sswitch_7
    const/16 v0, 0x28

    .line 4120
    goto :goto_0

    .line 4123
    :sswitch_8
    const/16 v0, 0x28

    .line 4124
    goto :goto_0

    .line 4127
    :sswitch_9
    const/16 v0, 0x28

    .line 4128
    goto :goto_0

    .line 4131
    :sswitch_a
    const/16 v0, 0x28

    .line 4132
    goto :goto_0

    .line 4135
    :sswitch_b
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->maxCountSeries:I

    .line 4136
    goto :goto_0

    .line 4139
    :sswitch_c
    const/16 v0, 0x28

    .line 4140
    goto :goto_0

    .line 4087
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_c
    .end sparse-switch
.end method

.method private isEnableBitData(II[IZ)I
    .locals 6
    .param p1, "aCheckBit"    # I
    .param p2, "aInitBit"    # I
    .param p3, "aMaskBit"    # [I
    .param p4, "aInitCheak"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 3897
    const/4 v1, 0x1

    .line 3899
    .local v1, "result":I
    if-nez p4, :cond_0

    .line 3900
    if-ne p1, p2, :cond_0

    .line 3932
    :goto_0
    return v2

    .line 3907
    :cond_0
    if-nez p3, :cond_1

    move v2, v1

    .line 3911
    goto :goto_0

    .line 3913
    :cond_1
    array-length v3, p3

    if-gtz v3, :cond_2

    move v2, v1

    .line 3917
    goto :goto_0

    .line 3920
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p3

    if-ge v0, v3, :cond_3

    .line 3921
    aget v3, p3, v0

    if-ne p1, v3, :cond_5

    .line 3922
    const/4 v1, 0x0

    .line 3926
    :cond_3
    if-ne v1, v4, :cond_4

    .line 3927
    const-string v3, "ServiceArgumentException Reason isEnableBitData param = %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move v2, v1

    .line 3932
    goto :goto_0

    .line 3920
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isEnableId(IIZ)I
    .locals 5
    .param p1, "aCheckID"    # I
    .param p2, "aInitID"    # I
    .param p3, "aInitCheak"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3807
    const/4 v0, 0x0

    .line 3809
    .local v0, "result":I
    if-nez p3, :cond_0

    .line 3810
    if-ne p1, p2, :cond_0

    .line 3828
    :goto_0
    return v1

    .line 3817
    :cond_0
    if-gtz p1, :cond_2

    .line 3818
    const/4 v0, 0x1

    .line 3822
    :goto_1
    if-ne v0, v3, :cond_1

    .line 3823
    const-string v2, "ServiceArgumentException Reason isEnableId param = %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v1, v0

    .line 3828
    goto :goto_0

    .line 3820
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isEnableOrBitData(IIIZ)I
    .locals 6
    .param p1, "aCheckBit"    # I
    .param p2, "aInitBit"    # I
    .param p3, "aMaskOrBit"    # I
    .param p4, "aInitCheak"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3957
    const/4 v0, 0x1

    .line 3959
    .local v0, "result":I
    if-nez p4, :cond_0

    .line 3960
    if-ne p1, p2, :cond_0

    .line 3985
    :goto_0
    return v1

    .line 3968
    :cond_0
    xor-int/lit8 v3, p3, -0x1

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 3969
    const-string v3, "ServiceArgumentException Reason isEnableOrBitData param = %s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 3973
    goto :goto_0

    .line 3976
    :cond_1
    and-int v3, p1, p3

    if-eqz v3, :cond_2

    .line 3977
    const/4 v0, 0x0

    .line 3979
    :cond_2
    if-ne v0, v2, :cond_3

    .line 3980
    const-string v3, "ServiceArgumentException Reason isEnableOrBitData param = %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move v1, v0

    .line 3985
    goto :goto_0
.end method

.method private isEnableSeriesIdArray([Ljava/lang/String;Z)I
    .locals 7
    .param p1, "aSeriesIdArray"    # [Ljava/lang/String;
    .param p2, "aInitCheak"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 4007
    if-nez p2, :cond_1

    .line 4008
    if-nez p1, :cond_1

    move v2, v3

    .line 4040
    :cond_0
    :goto_0
    return v2

    .line 4016
    :cond_1
    const/4 v2, 0x0

    .line 4017
    .local v2, "result":I
    if-eqz p1, :cond_5

    .line 4018
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_6

    .line 4020
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->ILLEGAL_SERIES_ID:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 4021
    aget-object v4, p1, v0

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->ILLEGAL_SERIES_ID:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 4022
    const/4 v2, 0x1

    .line 4020
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4026
    :cond_3
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xff

    if-le v4, v5, :cond_4

    .line 4027
    const/4 v2, 0x1

    .line 4018
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4031
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_5
    const/4 v2, 0x1

    .line 4033
    :cond_6
    if-ne v2, v6, :cond_0

    .line 4034
    const-string v4, "ServiceArgumentException Reason isEnableSeriesIdArray param = %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isEnableStringData(Ljava/lang/String;Z)I
    .locals 5
    .param p1, "aCheckString"    # Ljava/lang/String;
    .param p2, "aInitCheak"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 3712
    const/4 v0, 0x0

    .line 3714
    .local v0, "result":I
    if-nez p2, :cond_0

    .line 3715
    if-nez p1, :cond_0

    .line 3736
    :goto_0
    return v1

    .line 3722
    :cond_0
    if-eqz p1, :cond_3

    .line 3724
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    .line 3725
    const/4 v0, 0x1

    .line 3730
    :cond_1
    :goto_1
    if-ne v0, v4, :cond_2

    .line 3731
    const-string v2, "ServiceArgumentException Reason isEnableStringData param = %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v1, v0

    .line 3736
    goto :goto_0

    .line 3728
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private isEnableStringData(Ljava/lang/String;ZI)I
    .locals 4
    .param p1, "aCheckString"    # Ljava/lang/String;
    .param p2, "aInitCheak"    # Z
    .param p3, "aMaxByte"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3760
    const/4 v0, 0x0

    .line 3762
    .local v0, "result":I
    if-nez p2, :cond_0

    .line 3763
    if-nez p1, :cond_0

    .line 3784
    :goto_0
    return v1

    .line 3770
    :cond_0
    if-eqz p1, :cond_3

    .line 3772
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-le v2, p3, :cond_1

    .line 3773
    const/4 v0, 0x1

    .line 3778
    :cond_1
    :goto_1
    if-ne v0, v3, :cond_2

    .line 3779
    const-string v2, "ServiceArgumentException Reason isEnableStringData param = %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v1, v0

    .line 3784
    goto :goto_0

    .line 3776
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private isEnableTimeData(JJZ)I
    .locals 5
    .param p1, "aCheckTime"    # J
    .param p3, "aInitTime"    # J
    .param p5, "aInitCheak"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 3851
    const/4 v0, 0x0

    .line 3853
    .local v0, "result":I
    if-nez p5, :cond_0

    .line 3854
    cmp-long v2, p1, p3

    if-nez v2, :cond_0

    .line 3872
    :goto_0
    return v1

    .line 3861
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    .line 3862
    const/4 v0, 0x1

    .line 3866
    :goto_1
    if-ne v0, v4, :cond_1

    .line 3867
    const-string v2, "ServiceArgumentException Reason isEnableTimeData param = %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v1, v0

    .line 3872
    goto :goto_0

    .line 3864
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method addDataSeriesIdArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "aSeriesIdArray"    # [Ljava/lang/String;
    .param p2, "aAddData"    # Ljava/lang/String;

    .prologue
    .line 2257
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 2258
    :cond_0
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 2259
    .local v1, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "crid://"

    aput-object v4, v1, v3

    move-object v2, v1

    .line 2277
    .end local v1    # "result":[Ljava/lang/String;
    .local v2, "result":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2266
    .end local v2    # "result":[Ljava/lang/String;
    :cond_1
    if-nez p2, :cond_2

    .line 2267
    const-string p2, "crid://"

    .line 2269
    :cond_2
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 2270
    .restart local v1    # "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 2271
    aget-object v3, p1, v0

    aput-object v3, v1, v0

    .line 2270
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2273
    :cond_3
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aput-object p2, v1, v3

    move-object v2, v1

    .line 2277
    .end local v1    # "result":[Ljava/lang/String;
    .restart local v2    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method changeParameterForSearchReservedSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .locals 4
    .param p1, "aSearchKeyword"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    .prologue
    .line 981
    if-nez p1, :cond_0

    .line 982
    const-string v2, "ServiceArgumentException Reason param = null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1012
    .end local p1    # "aSearchKeyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    :goto_0
    return-object p1

    .line 988
    .restart local p1    # "aSearchKeyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 989
    .local v0, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    iput v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 990
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 991
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbHistory:I

    iput v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbHistory:I

    .line 992
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbReserveType:I

    iput v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbReserveType:I

    .line 993
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentMedia:I

    iput v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentMedia:I

    .line 994
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbServiceId:I

    iput v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbServiceId:I

    .line 995
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 996
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentTitle:Ljava/lang/String;

    .line 997
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentStartTime:J

    iput-wide v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentStartTime:J

    .line 998
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentEndTime:J

    iput-wide v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentEndTime:J

    .line 999
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentPlayTime:J

    iput-wide v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentPlayTime:J

    .line 1000
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentPlayDate:J

    iput-wide v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentPlayDate:J

    .line 1001
    iget v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_1

    .line 1002
    const/16 v1, 0x1807

    .line 1007
    .local v1, "type":I
    const/16 v2, 0x1807

    iput v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .end local v1    # "type":I
    :cond_1
    move-object p1, v0

    .line 1012
    goto :goto_0
.end method

.method convertRecordDataToScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    .locals 2
    .param p1, "aRecordData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .param p2, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    .line 3261
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3262
    :cond_0
    const-string v0, "null error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3288
    :goto_0
    return-void

    .line 3268
    :cond_1
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    iput v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 3269
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    iput-wide v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 3270
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    iput-object v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 3271
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbHistory:I

    iput v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 3272
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReserveType:I

    iput v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    .line 3273
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentTitle:Ljava/lang/String;

    iput-object v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    .line 3274
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentStartTime:J

    iput-wide v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 3275
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentEndTime:J

    iput-wide v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    .line 3276
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentPlayTime:J

    iput-wide v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayTime:J

    .line 3277
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentPlayDate:J

    iput-wide v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayDate:J

    .line 3278
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCntIndex:Ljava/lang/String;

    iput-object v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    .line 3279
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentMedia:I

    iput v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    .line 3280
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbServiceId:I

    iput v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    .line 3281
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->copyStringArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    .line 3282
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork1:I

    iput v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 3283
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork2:J

    iput-wide v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    .line 3284
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork3:Ljava/lang/String;

    iput-object v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    goto :goto_0
.end method

.method convertScheduleDataToRecordData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V
    .locals 2
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aRecordData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .prologue
    .line 3134
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 3135
    :cond_0
    const-string v0, "null error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3161
    :goto_0
    return-void

    .line 3141
    :cond_1
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    iput v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    .line 3142
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    iput-wide v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    .line 3143
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    iput-object v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    .line 3144
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    iput v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbHistory:I

    .line 3145
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    iput v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReserveType:I

    .line 3146
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    iput-object v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentTitle:Ljava/lang/String;

    .line 3147
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    iput-wide v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentStartTime:J

    .line 3148
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    iput-wide v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentEndTime:J

    .line 3149
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayTime:J

    iput-wide v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentPlayTime:J

    .line 3150
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayDate:J

    iput-wide v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentPlayDate:J

    .line 3151
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    iput-object v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCntIndex:Ljava/lang/String;

    .line 3152
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    iput v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentMedia:I

    .line 3153
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    iput v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbServiceId:I

    .line 3154
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->copyStringArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 3155
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    iput v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork1:I

    .line 3156
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    iput-wide v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork2:J

    .line 3157
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    iput-object v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork3:Ljava/lang/String;

    goto :goto_0
.end method

.method convertToSeriesReserveData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Ljava/util/List;Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;)V
    .locals 10
    .param p1, "aSeriesRecord"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .param p4, "aSeriesReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            ">;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "aStRecordList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    .local p3, "aFcRecordList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 3189
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 3191
    :cond_0
    const-string v5, "null error"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3238
    :goto_0
    return-void

    .line 3198
    :cond_1
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;-><init>()V

    .line 3199
    .local v2, "seriesdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    iput-object v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    .line 3200
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentTitle:Ljava/lang/String;

    iput-object v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesTitle:Ljava/lang/String;

    .line 3201
    iget-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentStartTime:J

    iput-wide v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesStartTime:J

    .line 3202
    iget-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentEndTime:J

    iput-wide v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesEndTime:J

    .line 3203
    iput-object v2, p4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    .line 3208
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 3209
    iput-object v8, p4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    .line 3210
    iput-object v8, p4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentPackageName:Ljava/lang/String;

    .line 3211
    iput-object v8, p4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentClassName:Ljava/lang/String;

    .line 3225
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 3226
    iput-object v8, p4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesFcScheduleData:Ljava/util/List;

    .line 3234
    :goto_2
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    iput-object v5, p4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbReservedPackageName:Ljava/lang/String;

    goto :goto_0

    .line 3213
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3214
    .local v4, "stdatalist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 3215
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 3216
    .local v3, "stdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-virtual {p0, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->convertRecordDataToScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V

    .line 3217
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3214
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3219
    .end local v3    # "stdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_3
    iput-object v4, p4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    .line 3220
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentPackageName:Ljava/lang/String;

    iput-object v5, p4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentPackageName:Ljava/lang/String;

    .line 3222
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentClassName:Ljava/lang/String;

    iput-object v5, p4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentClassName:Ljava/lang/String;

    goto :goto_1

    .line 3228
    .end local v1    # "i":I
    .end local v4    # "stdatalist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3229
    .local v0, "fcdatalist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 3230
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3229
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3232
    :cond_5
    iput-object v0, p4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesFcScheduleData:Ljava/util/List;

    goto :goto_2
.end method

.method copyStringArray([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "aArray"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2193
    const/4 v0, 0x0

    .line 2194
    .local v0, "result":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2195
    array-length v1, p1

    new-array v0, v1, [Ljava/lang/String;

    .line 2196
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2202
    :cond_0
    return-object v0
.end method

.method createRepeatTriggerTime(IIIJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J
    .locals 12
    .param p1, "aHour"    # I
    .param p2, "aMinute"    # I
    .param p3, "aSecond"    # I
    .param p4, "aTriggerTime"    # J
    .param p6, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    .line 2944
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getClockFromMyself(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v4

    .line 2947
    .local v4, "clocktime":J
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 2948
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2949
    const/16 v3, 0xb

    invoke-virtual {v2, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 2950
    const/16 v3, 0xc

    invoke-virtual {v2, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 2951
    const/16 v3, 0xd

    invoke-virtual {v2, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 2952
    const/16 v3, 0xe

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8}, Ljava/util/Calendar;->set(II)V

    .line 2954
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 2957
    .local v6, "result":J
    cmp-long v3, v6, v4

    if-gtz v3, :cond_0

    .line 2958
    invoke-virtual {v2, v10, v9}, Ljava/util/Calendar;->add(II)V

    .line 2959
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 2962
    :cond_0
    cmp-long v3, p4, v6

    if-nez v3, :cond_1

    .line 2963
    invoke-virtual {v2, v10, v9}, Ljava/util/Calendar;->add(II)V

    .line 2964
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 2969
    :cond_1
    return-wide v6
.end method

.method createRepeatTriggerTime(IIILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J
    .locals 7
    .param p1, "aHour"    # I
    .param p2, "aMinute"    # I
    .param p3, "aSecond"    # I
    .param p4, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 2893
    invoke-virtual {p0, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getClockFromMyself(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v2

    .line 2896
    .local v2, "clocktime":J
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 2897
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2898
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 2899
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 2900
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 2901
    const/16 v1, 0xe

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 2903
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 2906
    .local v4, "result":J
    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    .line 2907
    const/4 v1, 0x5

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->add(II)V

    .line 2908
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 2913
    :cond_0
    return-wide v4
.end method

.method createRepeatTriggerTime(JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J
    .locals 11
    .param p1, "aTriggerTime"    # J
    .param p3, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 2993
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 2994
    .local v7, "calendar":Ljava/util/Calendar;
    invoke-virtual {v7, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2995
    const/16 v0, 0xb

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2996
    .local v1, "hour":I
    const/16 v0, 0xc

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2997
    .local v2, "minute":I
    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .local v3, "second":I
    move-object v0, p0

    move-wide v4, p1

    move-object v6, p3

    .line 3001
    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->createRepeatTriggerTime(IIIJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v8

    .line 3005
    .local v8, "result":J
    return-wide v8
.end method

.method createRepeatTriggerTimeForPreSchedule(JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J
    .locals 17
    .param p1, "aTriggerTime"    # J
    .param p3, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 3029
    const-string v9, "UTC"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 3030
    .local v2, "calendar":Ljava/util/Calendar;
    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3031
    const/16 v9, 0xb

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 3032
    .local v4, "hour":I
    const/16 v9, 0xc

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 3033
    .local v5, "minute":I
    const/16 v9, 0xd

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 3035
    .local v8, "second":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getDeltatime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v14

    add-long v10, v12, v14

    .line 3038
    .local v10, "secureclock":J
    const-string v9, "UTC"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 3039
    .local v3, "clocktimeCalendar":Ljava/util/Calendar;
    invoke-virtual {v3, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3040
    const/16 v9, 0xb

    invoke-virtual {v3, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 3041
    const/16 v9, 0xc

    invoke-virtual {v3, v9, v5}, Ljava/util/Calendar;->set(II)V

    .line 3042
    const/16 v9, 0xd

    invoke-virtual {v3, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 3043
    const/16 v9, 0xe

    const/4 v12, 0x0

    invoke-virtual {v3, v9, v12}, Ljava/util/Calendar;->set(II)V

    .line 3045
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 3048
    .local v6, "result":J
    cmp-long v9, v6, v10

    if-gtz v9, :cond_0

    .line 3049
    const/4 v9, 0x5

    const/4 v12, 0x1

    invoke-virtual {v3, v9, v12}, Ljava/util/Calendar;->add(II)V

    .line 3050
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 3055
    :cond_0
    return-wide v6
.end method

.method deleteDataSeriesIdArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "aSeriesIdArray"    # [Ljava/lang/String;
    .param p2, "aDeleteData"    # Ljava/lang/String;

    .prologue
    .line 2299
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x1

    if-gt v4, v5, :cond_2

    .line 2303
    :cond_0
    const/4 v3, 0x0

    .line 2333
    :cond_1
    :goto_0
    return-object v3

    .line 2306
    :cond_2
    if-nez p2, :cond_3

    .line 2307
    const-string p2, "crid://"

    .line 2309
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 2311
    array-length v1, p1

    .line 2312
    .local v1, "datanumber":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_4

    .line 2313
    aget-object v4, p1, v2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2314
    move v1, v2

    .line 2318
    :cond_4
    array-length v4, p1

    if-eq v1, v4, :cond_7

    .line 2319
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 2320
    .local v3, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2321
    .local v0, "count":I
    const/4 v2, 0x0

    :goto_2
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 2322
    if-eq v1, v2, :cond_5

    .line 2323
    aget-object v4, p1, v2

    aput-object v4, v3, v0

    .line 2324
    add-int/lit8 v0, v0, 0x1

    .line 2321
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2312
    .end local v0    # "count":I
    .end local v3    # "result":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2328
    :cond_7
    move-object v3, p1

    .restart local v3    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method executeDelayScheduleForOrganizeSchedule(ILjava/util/List;Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 14
    .param p1, "aGetCount"    # I
    .param p3, "aContext"    # Landroid/content/Context;
    .param p4, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1789
    .local p2, "aScheduleDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    if-lez p1, :cond_0

    .line 1791
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1792
    .local v11, "stviewlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1793
    .local v10, "strecviewlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1794
    .local v6, "fcplaylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    .local v5, "fccommonlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1796
    .local v3, "btranslist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v4, 0x0

    .line 1797
    .local v4, "epgecggetflag":Z
    const/4 v2, 0x0

    .line 1798
    .local v2, "autolicensegetdelflag":Z
    const/4 v8, 0x0

    .line 1799
    .local v8, "logsendflag":Z
    const/4 v9, 0x0

    .line 1800
    .local v9, "recommendgetflag":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p1, :cond_1

    .line 1801
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget v12, v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    sparse-switch v12, :sswitch_data_0

    .line 1850
    const-string v12, "An Exception has occurred!"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1893
    .end local v2    # "autolicensegetdelflag":Z
    .end local v3    # "btranslist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v4    # "epgecggetflag":Z
    .end local v5    # "fccommonlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v6    # "fcplaylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v7    # "i":I
    .end local v8    # "logsendflag":Z
    .end local v9    # "recommendgetflag":Z
    .end local v10    # "strecviewlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v11    # "stviewlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :cond_0
    :goto_1
    return-void

    .line 1804
    .restart local v2    # "autolicensegetdelflag":Z
    .restart local v3    # "btranslist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v4    # "epgecggetflag":Z
    .restart local v5    # "fccommonlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v6    # "fcplaylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v7    # "i":I
    .restart local v8    # "logsendflag":Z
    .restart local v9    # "recommendgetflag":Z
    .restart local v10    # "strecviewlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v11    # "stviewlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :sswitch_0
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1800
    :goto_2
    :sswitch_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1808
    :sswitch_2
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1812
    :sswitch_3
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1823
    :sswitch_4
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1827
    :sswitch_5
    const/4 v4, 0x1

    .line 1828
    goto :goto_2

    .line 1831
    :sswitch_6
    const/4 v2, 0x1

    .line 1832
    goto :goto_2

    .line 1835
    :sswitch_7
    const/4 v8, 0x1

    .line 1836
    goto :goto_2

    .line 1839
    :sswitch_8
    const/4 v9, 0x1

    .line 1840
    goto :goto_2

    .line 1843
    :sswitch_9
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1861
    :cond_1
    const/4 v12, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v11, v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->executeDelayScheduleList(Ljava/util/List;Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)V

    .line 1864
    const/16 v12, 0x1000

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v10, v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->executeDelayScheduleList(Ljava/util/List;Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)V

    .line 1867
    const/4 v12, 0x2

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v6, v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->executeDelayScheduleList(Ljava/util/List;Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)V

    .line 1873
    const/4 v12, 0x4

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v5, v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->executeDelayScheduleList(Ljava/util/List;Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)V

    .line 1876
    const/16 v12, 0x20

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v4, v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->executeDelayScheduleFlag(ZLandroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)V

    .line 1879
    const/16 v12, 0x100

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v2, v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->executeDelayScheduleFlag(ZLandroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)V

    .line 1882
    const/16 v12, 0x200

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v8, v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->executeDelayScheduleFlag(ZLandroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)V

    .line 1885
    const/16 v12, 0x400

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v9, v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->executeDelayScheduleFlag(ZLandroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)V

    .line 1888
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v3, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->executeDelayScheduleBTransmission(Ljava/util/List;Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    goto/16 :goto_1

    .line 1801
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x4 -> :sswitch_4
        0x8 -> :sswitch_4
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_9
        0x80 -> :sswitch_4
        0x100 -> :sswitch_6
        0x200 -> :sswitch_7
        0x400 -> :sswitch_8
        0x800 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_4
    .end sparse-switch
.end method

.method getClockFromMyself(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J
    .locals 6
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 3452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getDeltatime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 3456
    .local v0, "clocktime":J
    return-wide v0
.end method

.method getDeltatime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J
    .locals 2
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 3682
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isSetDeltatime:Z

    if-nez v0, :cond_0

    .line 3683
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->setDeltaTime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 3688
    :cond_0
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->deltatime:J

    return-wide v0
.end method

.method getDoubleBookingForSetFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .locals 16
    .param p1, "aSetData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p4, "aAccess"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 2004
    .local p3, "aBookingCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2006
    .local v7, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :try_start_0
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2007
    .local v3, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/4 v2, 0x4

    iput v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2008
    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IILjava/util/List;Ljava/util/List;)I

    move-result v9

    .line 2011
    .local v9, "getcount":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-eq v9, v2, :cond_0

    .line 2012
    const-string v2, "An Exception has occurred!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2014
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v4, -0x3eb

    const-string v5, "Database broken"

    invoke-direct {v2, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 2017
    .end local v3    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v9    # "getcount":I
    :catch_0
    move-exception v8

    .line 2018
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const-string v2, "An Exception has occurred! code[%d] message[%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v8, v4, v5

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2020
    throw v8

    .line 2023
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .restart local v3    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .restart local v9    # "getcount":I
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 2027
    const/4 v13, 0x0

    .line 2057
    :cond_1
    return-object v13

    .line 2029
    :cond_2
    const/4 v2, 0x2

    new-array v11, v2, [Ljava/lang/String;

    .line 2030
    .local v11, "myArray":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    aput-object v4, v11, v2

    .line 2031
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2032
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v2

    .line 2034
    :cond_3
    const/4 v2, 0x1

    aput-object p2, v11, v2

    .line 2035
    if-eqz p2, :cond_4

    .line 2036
    const/4 v2, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v2

    .line 2038
    :cond_4
    array-length v2, v11

    new-array v12, v2, [Ljava/lang/String;

    .line 2039
    .local v12, "otherArray":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 2042
    .local v13, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_1

    .line 2044
    const/4 v4, 0x0

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    aput-object v2, v12, v4

    .line 2045
    const/4 v4, 0x1

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    aput-object v2, v12, v4

    .line 2046
    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2047
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    check-cast v13, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 2050
    .restart local v13    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_5
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-wide v14, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    cmp-long v2, v4, v14

    if-nez v2, :cond_6

    .line 2051
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2042
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method getDoubleBookingForSetRecSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .locals 12
    .param p1, "aSetData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aAccess"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 2598
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2600
    .local v5, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2601
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/16 v0, 0x1000

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2602
    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IILjava/util/List;Ljava/util/List;)I

    move-result v7

    .line 2605
    .local v7, "getcount":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eq v7, v0, :cond_0

    .line 2606
    const-string v0, "An Exception has occurred!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2608
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v2, -0x3eb

    const-string v3, "Database broken"

    invoke-direct {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 2611
    .end local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v7    # "getcount":I
    :catch_0
    move-exception v6

    .line 2612
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const-string v0, "An Exception has occurred! code[%d] message[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2614
    throw v6

    .line 2617
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .restart local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .restart local v7    # "getcount":I
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2621
    const/4 v11, 0x0

    .line 2647
    :cond_1
    return-object v11

    .line 2623
    :cond_2
    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/String;

    .line 2624
    .local v9, "myArray":[Ljava/lang/String;
    const/4 v0, 0x0

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    aput-object v2, v9, v0

    .line 2625
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2626
    const/4 v0, 0x0

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v0

    .line 2628
    :cond_3
    const/4 v0, 0x1

    aput-object p2, v9, v0

    .line 2629
    if-eqz p2, :cond_4

    .line 2630
    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v0

    .line 2632
    :cond_4
    array-length v0, v9

    new-array v10, v0, [Ljava/lang/String;

    .line 2633
    .local v10, "otherArray":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 2636
    .local v11, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 2638
    const/4 v2, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    aput-object v0, v10, v2

    .line 2639
    const/4 v2, 0x1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    aput-object v0, v10, v2

    .line 2640
    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2641
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    check-cast v11, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 2636
    .restart local v11    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method getDoubleBookingForSetSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .locals 13
    .param p1, "aSetData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aAccess"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 2445
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2447
    .local v5, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2448
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2449
    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IILjava/util/List;Ljava/util/List;)I

    move-result v7

    .line 2452
    .local v7, "getcount":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eq v7, v0, :cond_0

    .line 2453
    const-string v0, "An Exception has occurred!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2455
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v2, -0x3eb

    const-string v3, "Database broken"

    invoke-direct {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 2458
    .end local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v7    # "getcount":I
    :catch_0
    move-exception v6

    .line 2459
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const-string v0, "An Exception has occurred! code[%d] message[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2461
    throw v6

    .line 2464
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .restart local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .restart local v7    # "getcount":I
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2468
    const/4 v0, 0x0

    .line 2511
    :goto_0
    return-object v0

    .line 2471
    :cond_1
    const/4 v0, 0x3

    new-array v10, v0, [I

    fill-array-data v10, :array_0

    .line 2476
    .local v10, "myScheduleTypeA":[I
    const/4 v0, 0x3

    new-array v11, v0, [I

    fill-array-data v11, :array_1

    .line 2480
    .local v11, "myScheduleTypeB":[I
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    .line 2481
    .local v9, "myArray":[Ljava/lang/String;
    const/4 v0, 0x0

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    aput-object v2, v9, v0

    .line 2482
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2483
    const/4 v0, 0x0

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v0

    .line 2485
    :cond_2
    array-length v0, v9

    new-array v12, v0, [Ljava/lang/String;

    .line 2486
    .local v12, "otherArray":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 2487
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v0

    if-nez v0, :cond_3

    .line 2490
    const/4 v2, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    aput-object v0, v12, v2

    .line 2491
    invoke-static {v9, v12}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2496
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    goto :goto_0

    .line 2498
    :cond_3
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v11, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v0

    if-nez v0, :cond_4

    .line 2505
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    goto :goto_0

    .line 2486
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2511
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 2471
    nop

    :array_0
    .array-data 4
        0x8
        0x10
        0x40
    .end array-data

    .line 2476
    :array_1
    .array-data 4
        0x20
        0x200
        0x400
    .end array-data
.end method

.method getDoubleBookingForSetScheduleForSession(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .locals 12
    .param p1, "aSetData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aAccess"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2540
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2541
    .local v6, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v8, 0x0

    .line 2543
    .local v8, "getcount":I
    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2544
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2545
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 2546
    iput-object p2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 2547
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object v0, p3

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getSameTimeScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;JIILjava/util/List;)I

    move-result v8

    .line 2551
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-eq v8, v0, :cond_0

    .line 2552
    const-string v0, "An Exception has occurred!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2554
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v2, -0x3eb

    const-string v3, "Database broken"

    invoke-direct {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 2557
    .end local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    :catch_0
    move-exception v7

    .line 2558
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const-string v0, "An Exception has occurred! code[%d] message[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    aput-object v7, v2, v11

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2560
    throw v7

    .line 2562
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .restart local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    :cond_0
    const/4 v9, 0x0

    .line 2563
    .local v9, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    if-lez v8, :cond_1

    .line 2564
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    check-cast v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 2569
    .restart local v9    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_1
    return-object v9
.end method

.method getPlayBeforeSecondTime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)I
    .locals 3
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 2163
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2166
    .local v0, "beforetime":I
    if-gez v0, :cond_1

    .line 2167
    const/4 v0, 0x0

    .line 2174
    :cond_0
    :goto_0
    return v0

    .line 2168
    :cond_1
    const/16 v1, 0x63

    if-le v0, v1, :cond_0

    .line 2169
    const/16 v0, 0x63

    goto :goto_0
.end method

.method getTargetForUpdateFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .locals 11
    .param p1, "aSetData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aAccess"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2085
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2087
    .local v5, "recordlist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2088
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/4 v0, 0x4

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2089
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 2090
    iput-object p2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    .line 2091
    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IILjava/util/List;Ljava/util/List;)I

    move-result v7

    .line 2094
    .local v7, "getcount":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eq v7, v0, :cond_0

    .line 2095
    const-string v0, "An Exception has occurred!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2097
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v2, -0x3eb

    const-string v3, "Database broken"

    invoke-direct {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 2100
    .end local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v7    # "getcount":I
    :catch_0
    move-exception v6

    .line 2101
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const-string v0, "An Exception has occurred! code[%d] message[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v6, v2, v10

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2103
    throw v6

    .line 2105
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .restart local v1    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .restart local v7    # "getcount":I
    :cond_0
    const/4 v8, 0x0

    .line 2106
    .local v8, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2107
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    check-cast v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 2112
    .restart local v8    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_1
    return-object v8
.end method

.method initSeriesIdArray(I)[Ljava/lang/String;
    .locals 3
    .param p1, "aScheduleType"    # I

    .prologue
    const/4 v2, 0x1

    .line 2221
    const/4 v0, 0x0

    .line 2225
    .local v0, "result":[Ljava/lang/String;
    if-eq p1, v2, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1000

    if-ne p1, v1, :cond_1

    .line 2228
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    .line 2229
    const/4 v1, 0x0

    const-string v2, "crid://"

    aput-object v2, v0, v1

    .line 2234
    :cond_1
    return-object v0
.end method

.method isEnableCountForSetSeriesStSchedule(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Z
    .locals 10
    .param p2, "aAccess"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .local p1, "aStScheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v5, 0x1

    .line 3311
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    .line 3341
    :cond_1
    :goto_0
    return v4

    .line 3319
    :cond_2
    const/4 v4, 0x1

    .line 3320
    .local v4, "result":Z
    const/4 v1, 0x0

    .line 3322
    .local v1, "getcount":I
    :try_start_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 3323
    .local v2, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/4 v6, 0x1

    iput v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 3324
    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-virtual {p2, v2, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleDataCount(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;II)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3332
    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getOneTimeScheduleMaxCount(I)I

    move-result v3

    .line 3334
    .local v3, "maxcount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v1, v5

    .line 3335
    if-lt v1, v3, :cond_1

    .line 3336
    const/4 v4, 0x0

    goto :goto_0

    .line 3326
    .end local v2    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v3    # "maxcount":I
    :catch_0
    move-exception v0

    .line 3327
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const-string v6, "An Exception has occurred! code[%d] message[%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;->getErrorCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v0, v7, v5

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3329
    throw v0
.end method

.method isEnableCountSchedule(IILcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Z
    .locals 11
    .param p1, "aScheduleType"    # I
    .param p2, "aRepeatFlag"    # I
    .param p3, "aAccess"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 2718
    const/4 v5, 0x1

    .line 2720
    .local v5, "result":Z
    const/4 v1, 0x0

    .line 2722
    .local v1, "getcount":I
    :try_start_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2723
    .local v2, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/4 v4, 0x0

    .line 2724
    .local v4, "repeat":I
    if-ne p2, v10, :cond_1

    .line 2726
    iput p1, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2727
    const/4 v4, 0x1

    .line 2733
    :goto_0
    const/4 v6, 0x3

    invoke-virtual {p3, v2, v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->getScheduleDataCount(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;II)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2741
    const/4 v3, 0x0

    .line 2742
    .local v3, "maxcount":I
    if-ne p2, v10, :cond_2

    .line 2744
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getOneTimeScheduleMaxCount(I)I

    move-result v3

    .line 2750
    :goto_1
    if-lt v1, v3, :cond_0

    .line 2753
    const/4 v5, 0x0

    .line 2758
    :cond_0
    return v5

    .line 2730
    .end local v3    # "maxcount":I
    :cond_1
    const/16 v6, 0x7a0

    :try_start_1
    iput v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_1 .. :try_end_1} :catch_0

    .line 2731
    const/4 v4, 0x2

    goto :goto_0

    .line 2735
    .end local v2    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v4    # "repeat":I
    :catch_0
    move-exception v0

    .line 2736
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const-string v6, "An Exception has occurred! code[%d] message[%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;->getErrorCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v0, v7, v10

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2738
    throw v0

    .line 2747
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .restart local v2    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .restart local v3    # "maxcount":I
    .restart local v4    # "repeat":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method isEnableDeleteSeriesId([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "aSeriesIdArray"    # [Ljava/lang/String;
    .param p2, "aSeriesId"    # Ljava/lang/String;

    .prologue
    .line 2669
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    .line 2673
    :cond_0
    const/4 v3, 0x1

    .line 2693
    :cond_1
    :goto_0
    return v3

    .line 2676
    :cond_2
    if-nez p2, :cond_3

    .line 2677
    const-string p2, "crid://"

    .line 2681
    :goto_1
    const/4 v3, 0x0

    .line 2683
    .local v3, "result":Z
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 2684
    .local v4, "seId":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2685
    const/4 v3, 0x1

    .line 2686
    goto :goto_0

    .line 2679
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "result":Z
    .end local v4    # "seId":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 2683
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "result":Z
    .restart local v4    # "seId":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method isEnableParameterForAttachSeriesToSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aSeries"    # Ljava/lang/String;

    .prologue
    .line 1210
    if-nez p1, :cond_1

    .line 1211
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1215
    const/4 v0, 0x0

    .line 1245
    :cond_0
    :goto_0
    return v0

    .line 1217
    :cond_1
    const/4 v7, 0x0

    .line 1218
    .local v7, "rst":I
    const/4 v1, 0x3

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    .line 1223
    .local v8, "schedulemaskdata":[I
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 1225
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 1227
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 1229
    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 1232
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1233
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 1237
    :goto_1
    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 1238
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 1239
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1235
    .end local v0    # "result":Z
    :cond_2
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    goto :goto_1

    .line 1218
    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x1000
    .end array-data
.end method

.method isEnableParameterForDeleteFcSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aSeriesID"    # Ljava/lang/String;
    .param p3, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 746
    const/4 v1, 0x0

    .line 749
    .local v1, "rst":I
    invoke-direct {p0, p1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v2

    or-int/2addr v1, v2

    .line 750
    invoke-direct {p0, p3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v2

    or-int/2addr v1, v2

    .line 752
    invoke-direct {p0, p2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v2

    or-int/2addr v1, v2

    .line 753
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 754
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 755
    const-string v2, "ServiceArgumentException Reason param = %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    :cond_0
    return v0
.end method

.method isEnableParameterForDeleteFcScheduleAll(Ljava/lang/String;)Z
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 779
    const/4 v1, 0x0

    .line 781
    .local v1, "rst":I
    invoke-direct {p0, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v2

    or-int/2addr v1, v2

    .line 782
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 783
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 784
    const-string v2, "ServiceArgumentException Reason param = %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    :cond_0
    return v0
.end method

.method isEnableParameterForDeleteMultiSeriesForSession([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "aSeriesIdArray"    # [Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 1730
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    .line 1731
    :cond_0
    const-string v5, "ServiceArgumentException Reason param = %s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v4

    .line 1762
    :cond_1
    :goto_0
    return v2

    .line 1737
    :cond_2
    const/4 v3, 0x0

    .line 1739
    .local v3, "rst":I
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1740
    .local v0, "checkset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_4

    .line 1741
    aget-object v5, p1, v1

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v8, :cond_3

    .line 1742
    const-string v5, "ServiceArgumentException Reason param = %s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v4

    .line 1747
    goto :goto_0

    .line 1749
    :cond_3
    aget-object v5, p1, v1

    invoke-direct {p0, v5, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v5

    or-int/2addr v3, v5

    .line 1740
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1753
    :cond_4
    invoke-direct {p0, p2, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v5

    or-int/2addr v3, v5

    .line 1754
    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v2

    .line 1755
    .local v2, "result":Z
    if-nez v2, :cond_1

    .line 1756
    const-string v5, "ServiceArgumentException Reason param = %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object p2, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method isEnableParameterForDeleteRepeatSchedule(I)Z
    .locals 6
    .param p1, "aScheduleType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1175
    const/4 v1, 0x0

    .line 1177
    .local v1, "rst":I
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_SCHEDULE_TYPE_REPEAT:[I

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v2

    or-int/2addr v1, v2

    .line 1178
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 1179
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 1180
    const-string v2, "ServiceArgumentException Reason param = %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1185
    :cond_0
    return v0
.end method

.method isEnableParameterForDeleteSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)Z
    .locals 10
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 619
    if-nez p1, :cond_1

    .line 620
    const-string v1, "ServiceArgumentException Reason param = %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v9

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v9

    .line 680
    :cond_0
    :goto_0
    return v0

    .line 626
    :cond_1
    const/4 v7, 0x0

    .line 627
    .local v7, "rst":I
    const/16 v1, 0x8

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    .line 640
    .local v8, "schedulemaskdata":[I
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    invoke-direct {p0, v1, v9, v8, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 642
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 644
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_HISTORY_ALL:[I

    invoke-direct {p0, v1, v9, v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 648
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-direct {p0, v1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 650
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_RESERVE_TYPE_ALL:[I

    invoke-direct {p0, v1, v9, v2, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 652
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    const/16 v2, 0x200

    invoke-direct {p0, v1, v9, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;ZI)I

    move-result v1

    or-int/2addr v7, v1

    .line 655
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_MEDIA_ALL:[I

    invoke-direct {p0, v1, v9, v2, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 657
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-direct {p0, v1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableSeriesIdArray([Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 659
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    invoke-direct {p0, v1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 661
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    invoke-direct {p0, v1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 673
    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 674
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 675
    const-string v1, "ServiceArgumentException Reason param = %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v9

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 627
    :array_0
    .array-data 4
        0x4
        0x8
        0x10
        0x20
        0x40
        0x200
        0x400
        0x2000
    .end array-data
.end method

.method isEnableParameterForDeleteScheduleAll(I)Z
    .locals 6
    .param p1, "aScheduleType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1032
    const/4 v1, 0x0

    .line 1033
    .local v1, "rst":I
    const v2, 0xffff

    if-eq p1, v2, :cond_0

    .line 1034
    const/16 v2, 0x367f

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableOrBitData(IIIZ)I

    move-result v2

    or-int/2addr v1, v2

    .line 1036
    :cond_0
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 1037
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 1038
    const-string v2, "ServiceArgumentException Reason param = %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    :cond_1
    return v0
.end method

.method isEnableParameterForDeleteScheduleAtForSession(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aTriggerTime"    # J
    .param p4, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1582
    const/4 v7, 0x0

    .line 1584
    .local v7, "rst":I
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 1585
    invoke-direct {p0, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 1586
    invoke-direct {p0, p4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 1587
    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 1588
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 1589
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1595
    :cond_0
    return v0
.end method

.method isEnableParameterForDeleteScheduleForSession(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1547
    const/4 v1, 0x0

    .line 1549
    .local v1, "rst":I
    invoke-direct {p0, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v2

    or-int/2addr v1, v2

    .line 1550
    invoke-direct {p0, p2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v2

    or-int/2addr v1, v2

    .line 1551
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 1552
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 1553
    const-string v2, "ServiceArgumentException Reason param = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1558
    :cond_0
    return v0
.end method

.method isEnableParameterForDeleteSeriesForSession(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "aSeriesId"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1696
    const/4 v1, 0x0

    .line 1698
    .local v1, "rst":I
    invoke-direct {p0, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v2

    or-int/2addr v1, v2

    .line 1699
    invoke-direct {p0, p2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v2

    or-int/2addr v1, v2

    .line 1700
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 1701
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 1702
    const-string v2, "ServiceArgumentException Reason param = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1707
    :cond_0
    return v0
.end method

.method isEnableParameterForDeleteStSchedule(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aTriggerTime"    # J
    .param p4, "aSeriesID"    # Ljava/lang/String;
    .param p5, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 706
    const/4 v7, 0x0

    .line 709
    .local v7, "rst":I
    invoke-direct {p0, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 710
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 711
    invoke-direct {p0, p5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 713
    invoke-direct {p0, p4, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 714
    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 715
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 716
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    :cond_0
    return v0
.end method

.method isEnableParameterForGetFcPackageName(Ljava/lang/String;)Z
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1062
    const/4 v1, 0x0

    .line 1064
    .local v1, "rst":I
    invoke-direct {p0, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v2

    or-int/2addr v1, v2

    .line 1065
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 1066
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 1067
    const-string v2, "ServiceArgumentException Reason param = %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1072
    :cond_0
    return v0
.end method

.method isEnableParameterForGetRepeatSchedule(I)Z
    .locals 5
    .param p1, "aScheduleType"    # I

    .prologue
    .line 1386
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForDeleteRepeatSchedule(I)Z

    move-result v0

    .line 1387
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 1388
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1393
    :cond_0
    return v0
.end method

.method isEnableParameterForGetReservedSchedule(ILjava/util/List;)Z
    .locals 5
    .param p1, "aScheduleType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 862
    .local p2, "aScheduledDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForGetSchedule(ILjava/util/List;)Z

    move-result v0

    .line 863
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 864
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 870
    :cond_0
    return v0
.end method

.method isEnableParameterForGetSchedule(ILjava/util/List;)Z
    .locals 7
    .param p1, "aScheduleType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "aScheduledDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 812
    if-nez p2, :cond_1

    .line 813
    const-string v3, "ServiceArgumentException Reason param = %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 838
    :cond_0
    :goto_0
    return v0

    .line 820
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 821
    const-string v3, "ServiceArgumentException Reason param = %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 825
    goto :goto_0

    .line 827
    :cond_2
    const/4 v1, 0x0

    .line 829
    .local v1, "rst":I
    const/16 v3, 0x367f

    invoke-direct {p0, p1, v2, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableOrBitData(IIIZ)I

    move-result v3

    or-int/2addr v1, v3

    .line 830
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 831
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 832
    const-string v3, "ServiceArgumentException Reason param = %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p2, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method isEnableParameterForGetSeries(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "aSeriesDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1346
    if-nez p1, :cond_0

    .line 1347
    const-string v2, "ServiceArgumentException Reason param = %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1364
    :goto_0
    return v0

    .line 1354
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1355
    const-string v2, "ServiceArgumentException Reason param = %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1364
    goto :goto_0
.end method

.method isEnableParameterForGetStRecPackageName(Ljava/lang/String;)Z
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2130
    const/4 v1, 0x0

    .line 2132
    .local v1, "rst":I
    invoke-direct {p0, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v2

    or-int/2addr v1, v2

    .line 2133
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 2134
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 2135
    const-string v2, "ServiceArgumentException Reason param = %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2140
    :cond_0
    return v0
.end method

.method isEnableParameterForIsFcScheduleTimerFinished(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1093
    const/4 v1, 0x0

    .line 1095
    .local v1, "rst":I
    invoke-direct {p0, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v2

    or-int/2addr v1, v2

    .line 1096
    invoke-direct {p0, p2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v2

    or-int/2addr v1, v2

    .line 1098
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 1099
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 1100
    const-string v2, "ServiceArgumentException Reason param = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1105
    :cond_0
    return v0
.end method

.method isEnableParameterForPauseRepeatSchedule(I)Z
    .locals 6
    .param p1, "aScheduleType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1412
    const/4 v1, 0x0

    .line 1414
    .local v1, "rst":I
    const/16 v2, 0x7a0

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableOrBitData(IIIZ)I

    move-result v2

    or-int/2addr v1, v2

    .line 1415
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 1416
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 1417
    const-string v2, "ServiceArgumentException Reason param = %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1422
    :cond_0
    return v0
.end method

.method isEnableParameterForSearchSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/List;)Z
    .locals 10
    .param p1, "aSearchKeyword"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "aScheduledDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const-wide/16 v4, -0x3e7

    const/16 v3, -0x3e7

    const/4 v6, 0x0

    .line 893
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 894
    :cond_0
    const-string v1, "ServiceArgumentException Reason param = %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v6

    aput-object p2, v2, v8

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 954
    :goto_0
    return v6

    .line 903
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 904
    const-string v1, "ServiceArgumentException Reason param = %s"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 910
    :cond_2
    const/4 v7, 0x0

    .line 912
    .local v7, "rst":I
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    const/16 v2, 0x367f

    invoke-direct {p0, v1, v3, v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableOrBitData(IIIZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 916
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    invoke-direct {p0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 918
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbHistory:I

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_HISTORY_ALL:[I

    invoke-direct {p0, v1, v3, v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 921
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbReserveType:I

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_RESERVE_TYPE_ALL:[I

    invoke-direct {p0, v1, v3, v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 924
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentMedia:I

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_MEDIA_ALL:[I

    invoke-direct {p0, v1, v3, v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 927
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbServiceId:I

    invoke-direct {p0, v1, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableId(IIZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 930
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    invoke-direct {p0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 932
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentTitle:Ljava/lang/String;

    const/16 v2, 0x200

    invoke-direct {p0, v1, v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;ZI)I

    move-result v1

    or-int/2addr v7, v1

    .line 935
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentStartTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 938
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentEndTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 941
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentPlayTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 944
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentPlayDate:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 946
    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 947
    .local v0, "result":Z
    if-nez v0, :cond_3

    .line 948
    const-string v1, "ServiceArgumentException Reason param = %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v6

    aput-object p2, v2, v8

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move v6, v0

    .line 954
    goto/16 :goto_0
.end method

.method isEnableParameterForSetFcPlaySchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aIntentPackageName"    # Ljava/lang/String;
    .param p4, "aIntentClassName"    # Ljava/lang/String;

    .prologue
    .line 359
    if-nez p1, :cond_1

    .line 360
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    const/4 v7, 0x0

    .line 426
    :cond_0
    :goto_0
    return v7

    .line 366
    :cond_1
    const/4 v8, 0x0

    .line 367
    .local v8, "rst":I
    const/4 v1, 0x1

    new-array v9, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v9, v1

    .line 372
    .local v9, "schedulemaskdata":[I
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v8, v1

    .line 374
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v8, v1

    .line 376
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v8, v1

    .line 378
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 379
    .local v0, "historymuskbit":[I
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v8, v1

    .line 381
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    const/4 v2, 0x0

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_RESERVE_TYPE_ALL:[I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v8, v1

    .line 383
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x200

    invoke-direct {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;ZI)I

    move-result v1

    or-int/2addr v8, v1

    .line 386
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v8, v1

    .line 388
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v8, v1

    .line 390
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    const/4 v2, 0x0

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_MEDIA_ALL:[I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v8, v1

    .line 392
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v8, v1

    .line 395
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 396
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v8, v1

    .line 398
    const/4 v1, 0x1

    invoke-direct {p0, p4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v8, v1

    .line 403
    :cond_3
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v8, v1

    .line 405
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayDate:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v8, v1

    .line 407
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v8, v1

    .line 409
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableId(IIZ)I

    move-result v1

    or-int/2addr v8, v1

    .line 411
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableSeriesIdArray([Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v8, v1

    .line 413
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v8, v1

    .line 418
    invoke-direct {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v7

    .line 419
    .local v7, "result":Z
    if-nez v7, :cond_0

    .line 420
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method isEnableParameterForSetFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/util/List;)Z
    .locals 9
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 451
    .local p3, "aDoubleBookingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 452
    :cond_0
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    const/4 v0, 0x0

    .line 518
    :cond_1
    :goto_0
    return v0

    .line 460
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 461
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    const/4 v0, 0x0

    goto :goto_0

    .line 467
    :cond_3
    const/4 v7, 0x0

    .line 468
    .local v7, "rst":I
    const/4 v1, 0x1

    new-array v8, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v8, v1

    .line 472
    .local v8, "schedulemaskdata":[I
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 474
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 476
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    const/4 v2, 0x0

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_HISTORY_ALL:[I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 478
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    const/4 v2, 0x0

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_RESERVE_TYPE_ALL:[I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 480
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x200

    invoke-direct {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;ZI)I

    move-result v1

    or-int/2addr v7, v1

    .line 483
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 485
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 487
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    const/4 v2, 0x0

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_MEDIA_ALL:[I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 491
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 493
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayDate:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 495
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableId(IIZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 497
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableSeriesIdArray([Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 499
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 501
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 503
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 510
    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 511
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 512
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method isEnableParameterForSetRepeatSchedule(IIII)Z
    .locals 5
    .param p1, "aScheduleType"    # I
    .param p2, "aHour"    # I
    .param p3, "aMinute"    # I
    .param p4, "aSecond"    # I

    .prologue
    const/16 v2, 0x3b

    .line 1131
    const/4 v0, 0x1

    .line 1134
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForDeleteRepeatSchedule(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1138
    const/4 v0, 0x0

    .line 1149
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1150
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1156
    :cond_1
    return v0

    .line 1139
    :cond_2
    if-ltz p2, :cond_3

    const/16 v1, 0x17

    if-le p2, v1, :cond_4

    .line 1141
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1142
    :cond_4
    if-ltz p3, :cond_5

    if-le p3, v2, :cond_6

    .line 1144
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 1145
    :cond_6
    if-ltz p4, :cond_7

    if-le p4, v2, :cond_0

    .line 1147
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEnableParameterForSetSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)Z
    .locals 10
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 195
    if-nez p1, :cond_1

    .line 196
    const-string v1, "ServiceArgumentException Reason param = %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v9

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v9

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    const/4 v7, 0x0

    .line 203
    .local v7, "rst":I
    const/4 v1, 0x7

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    .line 215
    .local v8, "schedulemaskdata":[I
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    invoke-direct {p0, v1, v9, v8, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 217
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 219
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_HISTORY_ALL:[I

    invoke-direct {p0, v1, v9, v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 223
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-direct {p0, v1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 225
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_RESERVE_TYPE_ALL:[I

    invoke-direct {p0, v1, v9, v2, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 227
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    const/16 v2, 0x200

    invoke-direct {p0, v1, v9, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;ZI)I

    move-result v1

    or-int/2addr v7, v1

    .line 230
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_MEDIA_ALL:[I

    invoke-direct {p0, v1, v9, v2, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 232
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-direct {p0, v1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableSeriesIdArray([Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 234
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    invoke-direct {p0, v1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 236
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    invoke-direct {p0, v1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 247
    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 248
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 249
    const-string v1, "ServiceArgumentException Reason param = %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v9

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    nop

    :array_0
    .array-data 4
        0x8
        0x10
        0x20
        0x40
        0x400
        0x200
        0x2000
    .end array-data
.end method

.method isEnableParameterForSetScheduleForSession(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aIntentPackageName"    # Ljava/lang/String;
    .param p4, "aIntentClassName"    # Ljava/lang/String;

    .prologue
    .line 1450
    if-nez p1, :cond_1

    .line 1451
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1455
    const/4 v0, 0x0

    .line 1526
    :cond_0
    :goto_0
    return v0

    .line 1457
    :cond_1
    const/4 v7, 0x0

    .line 1458
    .local v7, "rst":I
    const/4 v1, 0x3

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    .line 1466
    .local v8, "schedulemaskdata":[I
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 1468
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 1470
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 1472
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    const/4 v2, 0x0

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_HISTORY_ALL:[I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 1474
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    const/4 v2, 0x0

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_RESERVE_TYPE_ALL:[I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 1476
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x200

    invoke-direct {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;ZI)I

    move-result v1

    or-int/2addr v7, v1

    .line 1479
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 1481
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 1483
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    const/4 v2, 0x0

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_MEDIA_ALL:[I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 1485
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 1487
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 1488
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 1490
    const/4 v1, 0x1

    invoke-direct {p0, p4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 1495
    :cond_3
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_5

    .line 1497
    :cond_4
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableId(IIZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 1504
    :goto_1
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 1506
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayDate:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 1508
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableSeriesIdArray([Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 1510
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 1512
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 1518
    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 1519
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 1520
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1499
    .end local v0    # "result":Z
    :cond_5
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableId(IIZ)I

    move-result v1

    or-int/2addr v7, v1

    goto :goto_1

    .line 1458
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x1000
    .end array-data
.end method

.method isEnableParameterForSetSeriesForSession(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Ljava/lang/String;)Z
    .locals 10
    .param p1, "aSeriesData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1618
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    if-nez v1, :cond_1

    .line 1619
    :cond_0
    const-string v1, "ServiceArgumentException Reason param = %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1675
    :goto_0
    return v6

    .line 1626
    :cond_1
    const/4 v8, 0x0

    .line 1628
    .local v8, "rst":I
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    invoke-direct {p0, v1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v8, v1

    .line 1630
    invoke-direct {p0, p2, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v8, v1

    .line 1634
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesTitle:Ljava/lang/String;

    const/16 v2, 0x200

    invoke-direct {p0, v1, v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;ZI)I

    move-result v1

    or-int/2addr v8, v1

    .line 1637
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-wide v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesStartTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v8, v1

    .line 1639
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-wide v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesEndTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v8, v1

    .line 1643
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesFcScheduleData:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1644
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesFcScheduleData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1645
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesFcScheduleData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v8, v1

    .line 1644
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1651
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1655
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1656
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentClassName:Ljava/lang/String;

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableParameterForSetScheduleForSession(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v9, :cond_3

    .line 1660
    const-string v1, "ServiceArgumentException Reason param = %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1655
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1668
    .end local v0    # "i":I
    :cond_4
    invoke-direct {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v7

    .line 1669
    .local v7, "result":Z
    if-nez v7, :cond_5

    .line 1670
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v6

    aput-object p2, v2, v9

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move v6, v7

    .line 1675
    goto/16 :goto_0
.end method

.method isEnableParameterForSetStRecSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)Z
    .locals 6
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 313
    if-nez p1, :cond_1

    .line 314
    const-string v4, "ServiceArgumentException Reason param = %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    const/4 v1, 0x0

    .line 321
    .local v1, "rst":I
    new-array v2, v5, [I

    const/16 v4, 0x1000

    aput v4, v2, v3

    .line 325
    .local v2, "schedulemaskdata":[I
    iget v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    invoke-direct {p0, v4, v3, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v4

    or-int/2addr v1, v4

    .line 326
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 327
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 328
    const-string v4, "ServiceArgumentException Reason param = %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method isEnableParameterForSetStSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)Z
    .locals 6
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 274
    if-nez p1, :cond_1

    .line 275
    const-string v4, "ServiceArgumentException Reason param = %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 294
    :cond_0
    :goto_0
    return v0

    .line 281
    :cond_1
    const/4 v1, 0x0

    .line 282
    .local v1, "rst":I
    new-array v2, v5, [I

    aput v5, v2, v3

    .line 286
    .local v2, "schedulemaskdata":[I
    iget v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    invoke-direct {p0, v4, v3, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v4

    or-int/2addr v1, v4

    .line 287
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 288
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 289
    const-string v4, "ServiceArgumentException Reason param = %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method isEnableParameterForUpdateFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;)Z
    .locals 9
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 541
    if-nez p1, :cond_1

    .line 542
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    const/4 v0, 0x0

    .line 599
    :cond_0
    :goto_0
    return v0

    .line 548
    :cond_1
    const/4 v7, 0x0

    .line 549
    .local v7, "rst":I
    const/4 v1, 0x1

    new-array v8, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v8, v1

    .line 553
    .local v8, "schedulemaskdata":[I
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 555
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 557
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    const/4 v2, 0x0

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_HISTORY_ALL:[I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 559
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    const/4 v2, 0x0

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_RESERVE_TYPE_ALL:[I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 561
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x200

    invoke-direct {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;ZI)I

    move-result v1

    or-int/2addr v7, v1

    .line 564
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 566
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 568
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    const/4 v2, 0x0

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->MASK_MEDIA_ALL:[I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableBitData(II[IZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 570
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableId(IIZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 574
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 576
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayDate:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 578
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableSeriesIdArray([Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 580
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 582
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 584
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 592
    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 593
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 594
    const-string v1, "ServiceArgumentException Reason param = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method isEnableParameterForUpdateSeries(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;)Z
    .locals 9
    .param p1, "aSeriesData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1300
    if-nez p1, :cond_0

    .line 1301
    const-string v1, "ServiceArgumentException Reason param = %s"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1326
    :goto_0
    return v6

    .line 1308
    :cond_0
    const/4 v7, 0x0

    .line 1310
    .local v7, "rst":I
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    invoke-direct {p0, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;Z)I

    move-result v1

    or-int/2addr v7, v1

    .line 1313
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesTitle:Ljava/lang/String;

    const/16 v2, 0x200

    invoke-direct {p0, v1, v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableStringData(Ljava/lang/String;ZI)I

    move-result v1

    or-int/2addr v7, v1

    .line 1316
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesStartTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 1318
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesEndTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isEnableTimeData(JJZ)I

    move-result v1

    or-int/2addr v7, v1

    .line 1319
    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkResult(I)Z

    move-result v0

    .line 1320
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 1321
    const-string v1, "ServiceArgumentException Reason param = %s"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v6, v0

    .line 1326
    goto :goto_0
.end method

.method isEnableTriggerTime(JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z
    .locals 5
    .param p1, "aTriggerTime"    # J
    .param p3, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 2782
    const/4 v2, 0x1

    .line 2784
    .local v2, "result":Z
    const-wide/16 v0, 0x0

    .line 2785
    .local v0, "clocktime":J
    invoke-virtual {p0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getClockFromMyself(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v0

    .line 2787
    cmp-long v3, p1, v0

    if-gtz v3, :cond_0

    .line 2788
    const/4 v2, 0x0

    .line 2793
    :cond_0
    return v2
.end method

.method makeRealTimeRecordListFromReserveData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "aSeriesData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3077
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    if-nez v4, :cond_2

    .line 3080
    :cond_0
    const-string v4, "null error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3111
    :cond_1
    :goto_0
    return-object v1

    .line 3087
    :cond_2
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 3088
    const-string v4, "List size error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3094
    :cond_3
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 3095
    .local v3, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3096
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 3097
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;-><init>()V

    .line 3098
    .local v2, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStScheduleData:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-virtual {p0, v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->convertScheduleDataToRecordData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V

    .line 3099
    iput v7, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    .line 3100
    iput v7, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    .line 3101
    iput-object p2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    .line 3102
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentPackageName:Ljava/lang/String;

    iput-object v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentPackageName:Ljava/lang/String;

    .line 3103
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentClassName:Ljava/lang/String;

    iput-object v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentClassName:Ljava/lang/String;

    .line 3104
    new-array v4, v7, [Ljava/lang/String;

    iput-object v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 3105
    iget-object v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 3106
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3096
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method makeSeriesRecordFromReserveData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .locals 5
    .param p1, "aSeriesData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 2843
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    if-nez v1, :cond_1

    .line 2844
    :cond_0
    const-string v1, "null error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2848
    const/4 v0, 0x0

    .line 2866
    :goto_0
    return-object v0

    .line 2850
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;-><init>()V

    .line 2851
    .local v0, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    const/16 v1, 0x800

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    .line 2852
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    .line 2853
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    .line 2854
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentTitle:Ljava/lang/String;

    .line 2855
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-wide v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesStartTime:J

    iput-wide v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentStartTime:J

    .line 2856
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-wide v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesEndTime:J

    iput-wide v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentEndTime:J

    .line 2857
    iput-object p2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    .line 2858
    iput v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    .line 2859
    iput v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    .line 2860
    const/4 v1, 0x2

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReserveType:I

    .line 2861
    iput v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbHistory:I

    .line 2862
    iput v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentMedia:I

    goto :goto_0
.end method

.method omitMilliSecondTriggerTime(J)J
    .locals 5
    .param p1, "aTriggerTime"    # J

    .prologue
    .line 2812
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 2813
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2814
    const/16 v1, 0xe

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 2815
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 2819
    .local v2, "result":J
    return-wide v2
.end method

.method organizeSeriesIdArray([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "aSeriesIdArray"    # [Ljava/lang/String;

    .prologue
    .line 2353
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 2357
    :cond_0
    const/4 v3, 0x0

    .line 2375
    :goto_0
    return-object v3

    .line 2359
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2360
    .local v0, "checkset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 2361
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 2362
    aget-object v4, p1, v2

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2363
    add-int/lit8 v1, v1, 0x1

    .line 2361
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2366
    :cond_3
    array-length v4, p1

    if-ne v4, v1, :cond_4

    .line 2367
    move-object v3, p1

    .local v3, "result":[Ljava/lang/String;
    goto :goto_0

    .line 2369
    .end local v3    # "result":[Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 2370
    .restart local v3    # "result":[Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method reserveDownloadForSetSeries(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Ljava/util/ArrayList;
    .locals 12
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aSeriesId"    # Ljava/lang/String;
    .param p4, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 3488
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 3492
    :cond_0
    const/4 v2, 0x0

    .line 3541
    :cond_1
    :goto_0
    return-object v2

    .line 3494
    :cond_2
    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p3, v7, v9

    .line 3496
    .local v7, "seriesidlist":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 3497
    .local v6, "reserveresult":I
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3501
    .local v0, "bookingset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3504
    .local v1, "crid":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v1, p2, v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->reserveDownload(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v6

    .line 3508
    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkReserveDownloadResult(I)Z
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v9

    if-nez v9, :cond_3

    .line 3534
    .end local v1    # "crid":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    .line 3535
    .local v2, "cridlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 3536
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "cridlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v2    # "cridlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 3511
    .end local v2    # "cridlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "crid":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3513
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;
    :try_start_2
    const-string v9, "CRID booking e[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3514
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;->getCrid()Ljava/util/List;

    move-result-object v8

    .line 3515
    .local v8, "templist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_3

    .line 3516
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 3517
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3516
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3522
    .end local v1    # "crid":Ljava/lang/String;
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "j":I
    .end local v8    # "templist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v3

    .line 3523
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3525
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v10, -0x3e9

    const-string v11, "Illegal parameter"

    invoke-direct {v9, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v9

    .line 3527
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_2
    move-exception v3

    .line 3528
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3530
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v10, -0x3ec

    const-string v11, "Fatal Exception"

    invoke-direct {v9, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v9
.end method

.method reserveRecForSetSeries(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Ljava/util/ArrayList;
    .locals 10
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aSeriesId"    # Ljava/lang/String;
    .param p4, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .local p1, "aScheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3573
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 3577
    :cond_0
    const/4 v1, 0x0

    .line 3614
    :cond_1
    :goto_0
    return-object v1

    .line 3579
    :cond_2
    new-array v5, v9, [Ljava/lang/String;

    aput-object p3, v5, v8

    .line 3581
    .local v5, "seriesidlist":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 3582
    .local v3, "reserveresult":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3585
    .local v1, "faillist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 3586
    .local v4, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    invoke-virtual {p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v6

    iget-object v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v6, v7, p2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->reserveRec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 3588
    if-eqz v3, :cond_4

    .line 3589
    iget-object v6, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3591
    :cond_4
    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkReserveRecResult(I)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-nez v6, :cond_3

    .line 3607
    .end local v4    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 3608
    const/4 v1, 0x0

    goto :goto_0

    .line 3595
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 3596
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v6, "%s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3598
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v7, -0x3e9

    const-string v8, "Illegal parameter"

    invoke-direct {v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v6

    .line 3600
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 3601
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v6, "%s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3603
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v7, -0x3ec

    const-string v8, "Fatal Exception"

    invoke-direct {v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v6
.end method

.method setDeltaTime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 14
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 3635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3636
    .local v0, "deviceclock":J
    const-wide/16 v4, 0x0

    .line 3639
    .local v4, "secureclock":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->checkMainService(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_1

    .line 3643
    :try_start_1
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v4

    .line 3644
    sub-long v6, v4, v0

    iput-wide v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->deltatime:J

    .line 3645
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isSetDeltatime:Z
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3651
    cmp-long v3, v4, v12

    if-gtz v3, :cond_0

    .line 3652
    :try_start_2
    const-string v3, "getSecureClock Error clocktime[%d]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3653
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->deltatime:J

    .line 3654
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isSetDeltatime:Z
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_2 .. :try_end_2} :catch_1

    .line 3666
    :cond_0
    :goto_0
    return-void

    .line 3646
    :catch_0
    move-exception v2

    .line 3647
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_3
    const-string v3, "getSecureClock Error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3648
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->deltatime:J

    .line 3649
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isSetDeltatime:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3651
    cmp-long v3, v4, v12

    if-gtz v3, :cond_0

    .line 3652
    :try_start_4
    const-string v3, "getSecureClock Error clocktime[%d]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3653
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->deltatime:J

    .line 3654
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isSetDeltatime:Z
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 3658
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 3659
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const-string v3, "Error! Can\'t get secureclock"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3660
    iput-wide v12, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->deltatime:J

    .line 3661
    iput-boolean v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isSetDeltatime:Z

    goto :goto_0

    .line 3651
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    :catchall_0
    move-exception v3

    cmp-long v6, v4, v12

    if-gtz v6, :cond_1

    .line 3652
    :try_start_5
    const-string v6, "getSecureClock Error clocktime[%d]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3653
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->deltatime:J

    .line 3654
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->isSetDeltatime:Z

    :cond_1
    throw v3
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_5 .. :try_end_5} :catch_1
.end method
