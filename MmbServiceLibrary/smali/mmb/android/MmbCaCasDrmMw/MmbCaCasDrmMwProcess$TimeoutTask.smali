.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$TimeoutTask;
.super Ljava/util/TimerTask;
.source "MmbCaCasDrmMwProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;


# direct methods
.method constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$TimeoutTask;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 299
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$TimeoutTask;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->access$000(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$TimeoutTask;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;

    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->onTimeout()V

    .line 308
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$TimeoutTask;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->access$000(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :try_start_1
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$TimeoutTask;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;

    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->onTimeout()V

    .line 304
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 306
    :catch_0
    move-exception v0

    goto :goto_0
.end method
