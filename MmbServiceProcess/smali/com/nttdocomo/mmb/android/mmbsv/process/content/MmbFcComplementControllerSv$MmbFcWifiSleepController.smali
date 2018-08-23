.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;
.super Ljava/lang/Object;
.source "MmbFcComplementControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbFcWifiSleepController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController$MmbFcWifiSleepControlTask;
    }
.end annotation


# instance fields
.field private mCurrentTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;)V
    .locals 1

    .prologue
    .line 2295
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2297
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->mCurrentTask:Ljava/util/concurrent/ScheduledFuture;

    .line 2391
    return-void
.end method

.method private declared-synchronized registerSchedule()V
    .locals 5

    .prologue
    .line 2349
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->unregisterSchedule()V

    .line 2351
    const-wide/32 v0, 0xea60

    .line 2352
    .local v0, "timeout":J
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController$MmbFcWifiSleepControlTask;

    invoke-direct {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController$MmbFcWifiSleepControlTask;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->mCurrentTask:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2358
    monitor-exit p0

    return-void

    .line 2349
    .end local v0    # "timeout":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized unregisterSchedule()V
    .locals 2

    .prologue
    .line 2374
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->mCurrentTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->mCurrentTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 2376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->mCurrentTask:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2381
    :cond_0
    monitor-exit p0

    return-void

    .line 2374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public startWakeup()V
    .locals 4

    .prologue
    .line 2320
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    move-result-object v0

    .line 2322
    .local v0, "sleepCtrl":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->wakeupWifi(J)V

    .line 2325
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->registerSchedule()V

    .line 2329
    return-void
.end method
