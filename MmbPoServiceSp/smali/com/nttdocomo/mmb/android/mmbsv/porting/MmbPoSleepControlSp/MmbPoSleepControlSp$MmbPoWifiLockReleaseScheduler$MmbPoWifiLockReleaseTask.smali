.class Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;
.super Ljava/lang/Object;
.source "MmbPoSleepControlSp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbPoWifiLockReleaseTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 387
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    const-string v2, "MmbPoWifiLockReleaseTask#run()"

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;Ljava/lang/String;)V

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    if-nez v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    const-string v2, "illegal mCurrentTask instance."

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;Ljava/lang/String;)V

    .line 428
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    const-string v2, "wifilock release canceled."

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 408
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 415
    :try_start_2
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    const-string v3, "WifiLock#release()"

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 418
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    const-string v3, "lock status: mWifiLock(release)"

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;Ljava/lang/String;)V

    .line 420
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 422
    :cond_3
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler$MmbPoWifiLockReleaseTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    const-string v2, "illegal WifiLock instance."

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method
