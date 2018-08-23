.class public Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;
.super Ljava/lang/Object;
.source "MmbSiMetadataStateSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmbSimpleCondWait"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;
    }
.end annotation


# instance fields
.field protected callback:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

.field protected cond:Z

.field protected lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->lock:Ljava/lang/Object;

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->cond:Z

    .line 701
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    .line 752
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 839
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 840
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->cond:Z

    .line 841
    monitor-exit v1

    .line 846
    return-void

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait$MmbCancelCallbackImpl;

    return-object v0
.end method

.method public signal()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 814
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 815
    :try_start_0
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->cond:Z

    if-nez v1, :cond_0

    .line 816
    .local v0, "ret":Z
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->cond:Z

    .line 817
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 818
    monitor-exit v2

    .line 823
    return v0

    .line 815
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 818
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
    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbSimpleCondWait [cond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->cond:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->lock:Ljava/lang/Object;

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
    const/4 v1, 0x0

    .line 769
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 770
    const-string v4, "Illigal Argment. time reached."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    :goto_0
    return v1

    .line 777
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long v2, v4, p1

    .line 778
    .local v2, "tmout":J
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 779
    :goto_1
    :try_start_0
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->cond:Z

    if-nez v4, :cond_1

    .line 780
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v4, v6, v2

    if-ltz v4, :cond_2

    .line 791
    :cond_1
    :goto_2
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->cond:Z

    .line 792
    .local v1, "ret":Z
    monitor-exit v5

    goto :goto_0

    .end local v1    # "ret":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 784
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv$MmbSimpleCondWait;->lock:Ljava/lang/Object;

    invoke-virtual {v4, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "catch signal InterruptedException."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 787
    const/4 v1, 0x0

    .line 788
    .restart local v1    # "ret":Z
    goto :goto_2
.end method
