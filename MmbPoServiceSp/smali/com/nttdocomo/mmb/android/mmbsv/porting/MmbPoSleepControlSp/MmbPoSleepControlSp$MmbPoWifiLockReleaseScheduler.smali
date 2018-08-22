.class Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;
.super Ljava/lang/Object;
.source "MmbPoSleepControlSp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbPoWifiLockReleaseScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;
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

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;)V
    .locals 1

    .prologue
    .line 335
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->mCurrentTask:Ljava/util/concurrent/ScheduledFuture;

    .line 384
    return-void
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->mCurrentTask:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized registerSchedule(J)V
    .locals 3
    .param p1, "aTimeOut"    # J

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmbPoWifiLockReleaseScheduler#registerSchedule() aTimeOut->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->unregisterSchedule()V

    .line 354
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->mCurrentTask:Ljava/util/concurrent/ScheduledFuture;

    .line 357
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    const-string v1, "MmbPoWifiLockReleaseScheduler#registerSchedule() done."

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterSchedule()V
    .locals 2

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    const-string v1, "MmbPoWifiLockReleaseScheduler#unregisterSchedule()"

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->mCurrentTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->mCurrentTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :cond_0
    monitor-exit p0

    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
