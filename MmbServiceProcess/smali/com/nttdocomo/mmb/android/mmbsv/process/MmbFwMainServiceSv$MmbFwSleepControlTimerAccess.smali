.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;
.super Ljava/lang/Object;
.source "MmbFwMainServiceSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbFwSleepControlTimerAccess"
.end annotation


# instance fields
.field private mTimerInstance:Ljava/util/Timer;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 1

    .prologue
    .line 3157
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->mTimerInstance:Ljava/util/Timer;

    .line 3164
    return-void
.end method

.method private unRegistTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3212
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->mTimerInstance:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3213
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->access$602(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;

    .line 3214
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->mTimerInstance:Ljava/util/Timer;

    .line 3219
    return-void
.end method


# virtual methods
.method public declared-synchronized registTimer(J)V
    .locals 5
    .param p1, "aTimeOut"    # J

    .prologue
    .line 3180
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->mTimerInstance:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 3181
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->unRegistTimer()V

    .line 3183
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->mTimerInstance:Ljava/util/Timer;

    .line 3184
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->access$602(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;

    .line 3185
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->mTimerInstance:Ljava/util/Timer;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->access$600(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3194
    :goto_0
    monitor-exit p0

    return-void

    .line 3187
    :catch_0
    move-exception v0

    .line 3188
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not regist timer Exception->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3180
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
