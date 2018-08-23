.class public Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;
.super Ljava/lang/Object;
.source "MmbFwIpcStubSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbFwMmAppStartupStatusSv"
.end annotation


# instance fields
.field private mmbProcessId:I

.field private mmbStartupStatus:Z

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;)V
    .locals 1

    .prologue
    .line 10908
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->mmbStartupStatus:Z

    .line 10915
    return-void
.end method

.method static synthetic access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;)I
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;

    .prologue
    .line 10890
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->getProcessId()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;
    .param p1, "x1"    # I

    .prologue
    .line 10890
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->getStartupStatus(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;
    .param p1, "x1"    # I

    .prologue
    .line 10890
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->unregisterMmAppStartupStatus(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 10890
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->registerMmAppStartupStatus(IZ)V

    return-void
.end method

.method private declared-synchronized getProcessId()I
    .locals 1

    .prologue
    .line 10985
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->mmbProcessId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getStartupStatus(I)Z
    .locals 2
    .param p1, "aProcessId"    # I

    .prologue
    .line 11003
    monitor-enter p0

    const/4 v0, 0x0

    .line 11004
    .local v0, "result":Z
    :try_start_0
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->mmbProcessId:I

    if-ne v1, p1, :cond_0

    .line 11005
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->mmbStartupStatus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11010
    :cond_0
    monitor-exit p0

    return v0

    .line 11003
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized registerMmAppStartupStatus(IZ)V
    .locals 1
    .param p1, "aProcessId"    # I
    .param p2, "aStartupStatus"    # Z

    .prologue
    .line 10935
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->mmbProcessId:I

    .line 10936
    iput-boolean p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->mmbStartupStatus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10940
    monitor-exit p0

    return-void

    .line 10935
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unregisterMmAppStartupStatus(I)V
    .locals 1
    .param p1, "aProcessId"    # I

    .prologue
    .line 10958
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->mmbProcessId:I

    if-ne v0, p1, :cond_0

    .line 10959
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->mmbProcessId:I

    .line 10960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->mmbStartupStatus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10965
    :cond_0
    monitor-exit p0

    return-void

    .line 10958
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbFwMmAppStartupStatusSv [mmbProcessId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->mmbProcessId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbStartupStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->mmbStartupStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
