.class public Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;
.super Ljava/lang/Object;
.source "MmbStRecordingTimerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;
    }
.end annotation


# instance fields
.field private mTimer:Ljava/util/Timer;

.field private mTimerListener:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;

.field private mTimerLock:Ljava/lang/Object;

.field private mTimerTask:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;JI)V
    .locals 2
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;
    .param p2, "aMilliSeconds"    # J
    .param p4, "aUserParam"    # I

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimer:Ljava/util/Timer;

    .line 32
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerListener:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;

    .line 34
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerTask:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;

    invoke-direct {v0, p0, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;I)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->initialize(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;JLcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;)V

    .line 59
    return-void
.end method

.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;JLcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)V
    .locals 2
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;
    .param p2, "aMilliSeconds"    # J
    .param p4, "aStateObj"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimer:Ljava/util/Timer;

    .line 32
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerListener:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;

    .line 34
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerTask:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;

    invoke-direct {v0, p0, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->initialize(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;JLcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerListener:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;

    return-object v0
.end method

.method private initialize(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;JLcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;)V
    .locals 4
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;
    .param p2, "aMilliSeconds"    # J
    .param p4, "aTimerTask"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerListener:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;

    .line 103
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimer:Ljava/util/Timer;

    .line 105
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerTask:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;

    .line 106
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerTask:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;

    invoke-virtual {v0, v2, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 107
    monitor-exit v1

    .line 112
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method cancelAndSetTimer(JI)V
    .locals 3
    .param p1, "aMilliSeconds"    # J
    .param p3, "aUserParam"    # I

    .prologue
    .line 253
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 258
    monitor-exit v1

    .line 270
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimer:Ljava/util/Timer;

    .line 262
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimer:Ljava/util/Timer;

    .line 263
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;

    invoke-direct {v0, p0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;I)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerTask:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;

    .line 264
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerTask:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;

    invoke-virtual {v0, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 265
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method cancelTimer()V
    .locals 2

    .prologue
    .line 226
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 230
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimer:Ljava/util/Timer;

    .line 231
    monitor-exit v1

    .line 236
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getStateObject()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->mTimerTask:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    return-object v0
.end method
