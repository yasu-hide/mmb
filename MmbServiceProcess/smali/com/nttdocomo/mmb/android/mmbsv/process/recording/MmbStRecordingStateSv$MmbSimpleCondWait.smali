.class public Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;
.super Ljava/lang/Object;
.source "MmbStRecordingStateSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmbSimpleCondWait"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;
    }
.end annotation


# instance fields
.field protected callback:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

.field protected cond:Z

.field protected condListener:Z

.field protected lock:Ljava/lang/Object;

.field protected lockListener:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->lock:Ljava/lang/Object;

    .line 900
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->lockListener:Ljava/lang/Object;

    .line 902
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->cond:Z

    .line 904
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->condListener:Z

    .line 906
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    .line 957
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 1048
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1049
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->cond:Z

    .line 1050
    monitor-exit v1

    .line 1055
    return-void

    .line 1050
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public signal()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1022
    const/4 v0, 0x0

    .line 1023
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1024
    :try_start_0
    iget-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->cond:Z

    if-nez v3, :cond_0

    move v0, v1

    .line 1025
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->cond:Z

    .line 1026
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1027
    monitor-exit v2

    .line 1032
    return v0

    .line 1024
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1027
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbSimpleCondWait [cond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->cond:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->lock:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitFor(J)Z
    .locals 9
    .param p1, "aTimeout"    # J

    .prologue
    const/4 v4, 0x0

    .line 972
    const/4 v1, 0x0

    .line 973
    .local v1, "ret":Z
    const-wide/16 v2, 0x0

    .line 974
    .local v2, "tmout":J
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gtz v5, :cond_0

    .line 975
    const-string v5, "Illigal Argment. time reached."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1006
    :goto_0
    return v4

    .line 982
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long v2, v4, p1

    .line 983
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 984
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->lockListener:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 985
    :try_start_1
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->condListener:Z

    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->cond:Z

    .line 986
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 987
    :goto_1
    :try_start_2
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->cond:Z

    if-nez v4, :cond_1

    .line 988
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v4, v6, v2

    if-ltz v4, :cond_2

    .line 999
    :cond_1
    :goto_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->condListener:Z

    .line 1000
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->cond:Z

    .line 1001
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v4, v1

    .line 1006
    goto :goto_0

    .line 986
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    .line 1001
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 992
    :cond_2
    :try_start_5
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->lock:Ljava/lang/Object;

    invoke-virtual {v4, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string v4, "catch signal InterruptedException."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 995
    const/4 v1, 0x0

    .line 996
    goto :goto_2
.end method
