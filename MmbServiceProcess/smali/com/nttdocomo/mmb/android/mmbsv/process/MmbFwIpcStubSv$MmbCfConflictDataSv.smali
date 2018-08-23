.class public Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;
.super Ljava/lang/Object;
.source "MmbFwIpcStubSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbCfConflictDataSv"
.end annotation


# instance fields
.field private mmbCrid:Ljava/lang/String;

.field private mmbProcessId:I

.field private mmbServiceId:I

.field private mmbServiceType:I

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;)V
    .locals 0

    .prologue
    .line 10383
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10390
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;)I
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

    .prologue
    .line 10356
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->getProcessId()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;)I
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

    .prologue
    .line 10356
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->mmbServiceType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;IIILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 10356
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->regsterConflictData(IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;)I
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

    .prologue
    .line 10356
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->mmbServiceId:I

    return v0
.end method

.method static synthetic access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

    .prologue
    .line 10356
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->mmbCrid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;
    .param p1, "x1"    # I

    .prologue
    .line 10356
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->unregsterConflictData(I)V

    return-void
.end method

.method private declared-synchronized getProcessId()I
    .locals 1

    .prologue
    .line 10462
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->mmbProcessId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized regsterConflictData(IIILjava/lang/String;)V
    .locals 1
    .param p1, "aProcessId"    # I
    .param p2, "aServiceType"    # I
    .param p3, "aServiceId"    # I
    .param p4, "aCrId"    # Ljava/lang/String;

    .prologue
    .line 10410
    monitor-enter p0

    const/16 v0, 0x108

    if-eq v0, p2, :cond_0

    .line 10411
    :try_start_0
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->mmbProcessId:I

    .line 10412
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->mmbServiceType:I

    .line 10413
    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->mmbServiceId:I

    .line 10414
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->mmbCrid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10420
    :cond_0
    monitor-exit p0

    return-void

    .line 10410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unregsterConflictData(I)V
    .locals 1
    .param p1, "aServiceType"    # I

    .prologue
    .line 10435
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->mmbServiceType:I

    if-ne p1, v0, :cond_0

    .line 10436
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->mmbProcessId:I

    .line 10437
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->mmbServiceType:I

    .line 10438
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->mmbServiceId:I

    .line 10439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->mmbCrid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10445
    :cond_0
    monitor-exit p0

    return-void

    .line 10435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
