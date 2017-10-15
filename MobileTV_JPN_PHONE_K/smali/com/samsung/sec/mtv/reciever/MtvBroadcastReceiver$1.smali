.class final Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "MtvBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->access$000()Landroid/os/Handler;

    move-result-object v1

    monitor-enter v1

    .line 75
    :try_start_0
    invoke-static {}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->access$100()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    invoke-static {}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->access$202(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 79
    const-string v0, "MtvBroadcastReciever"

    const-string v2, "Released PARTIAL_WAKE_LOCK"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
