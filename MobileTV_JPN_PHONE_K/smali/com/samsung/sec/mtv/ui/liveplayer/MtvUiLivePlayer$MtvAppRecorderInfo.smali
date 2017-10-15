.class public Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;
.super Ljava/lang/Object;
.source "MtvUiLivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtvAppRecorderInfo"
.end annotation


# static fields
.field private static final MINIMUM_RECORD_TIMER:I = 0x6

.field private static final RECORD_TIMER_INCREMENT_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MtvAppRecorderInfo"

.field private static mSingletonInstance:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;


# instance fields
.field private isRecordedFileSavable:Z

.field private isStarted:Z

.field private mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

.field private mRecordHandler:Landroid/os/Handler;

.field private mRecordTime:I

.field private mRecordTimeCounter:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6437
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6439
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordHandler:Landroid/os/Handler;

    .line 6440
    iput v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTime:I

    .line 6441
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable:Z

    .line 6442
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isStarted:Z

    .line 6443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 6485
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTimeCounter:Ljava/lang/Runnable;

    .line 6447
    const-string v0, "MtvAppRecorderInfo"

    const-string v1, "Created newly..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 6448
    return-void
.end method

.method private constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V
    .locals 2
    .param p1, "mFragHandler"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .prologue
    const/4 v1, 0x0

    .line 6451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6439
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordHandler:Landroid/os/Handler;

    .line 6440
    iput v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTime:I

    .line 6441
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable:Z

    .line 6442
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isStarted:Z

    .line 6443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 6485
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTimeCounter:Ljava/lang/Runnable;

    .line 6452
    const-string v0, "MtvAppRecorderInfo"

    const-string v1, "Created newly with fragHandler"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 6453
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 6454
    return-void
.end method

.method static synthetic access$17100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    .prologue
    .line 6431
    iget v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTime:I

    return v0
.end method

.method static synthetic access$17108(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    .prologue
    .line 6431
    iget v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTime:I

    return v0
.end method

.method static synthetic access$17200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    .prologue
    .line 6431
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$17300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    .prologue
    .line 6431
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    .prologue
    .line 6431
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 6431
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable:Z

    return p1
.end method

.method public static getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;
    .locals 1

    .prologue
    .line 6458
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    if-nez v0, :cond_0

    .line 6460
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    .line 6463
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    return-object v0
.end method

.method public static getInstance(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;
    .locals 1
    .param p0, "mFragHandler"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .prologue
    .line 6468
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    if-nez v0, :cond_0

    .line 6470
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    .line 6476
    :goto_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    return-object v0

    .line 6474
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    iput-object p0, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    goto :goto_0
.end method

.method public static reset()V
    .locals 2

    .prologue
    .line 6481
    const-string v0, "MtvAppRecorderInfo"

    const-string v1, "Reset called"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 6482
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mSingletonInstance:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    .line 6483
    return-void
.end method


# virtual methods
.method public continueRecordTimer(I)V
    .locals 4
    .param p1, "timeElapsed"    # I

    .prologue
    .line 6532
    iput p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTime:I

    .line 6533
    iget v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTime:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 6534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable:Z

    .line 6536
    :cond_0
    const-string v1, "MtvAppRecorderInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record Timer continuing from ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] seconds. File can "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable:Z

    if-eqz v0, :cond_1

    const-string v0, "be"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " saved now"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 6537
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTimeCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6538
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTimeCounter:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6539
    return-void

    .line 6536
    :cond_1
    const-string v0, "not be"

    goto :goto_0
.end method

.method public getRecordTime()I
    .locals 1

    .prologue
    .line 6553
    iget v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTime:I

    return v0
.end method

.method public isRecordTimerStarted()Z
    .locals 1

    .prologue
    .line 6548
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isStarted:Z

    return v0
.end method

.method public isRecordedFileSavable()Z
    .locals 1

    .prologue
    .line 6543
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable:Z

    return v0
.end method

.method public startRecordTimer()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6513
    iput v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTime:I

    .line 6514
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable:Z

    .line 6515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isStarted:Z

    .line 6516
    const-string v0, "MtvAppRecorderInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record Timer started @ ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] secs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 6517
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTimeCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6518
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTimeCounter:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6519
    return-void
.end method

.method public stopRecordTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6523
    const-string v1, "MtvAppRecorderInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record Timer stopped @ ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ] secs. File can "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable:Z

    if-eqz v0, :cond_0

    const-string v0, "be"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " saved"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 6524
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTime:I

    .line 6525
    iput-boolean v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable:Z

    .line 6526
    iput-boolean v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isStarted:Z

    .line 6527
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->mRecordTimeCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6528
    return-void

    .line 6523
    :cond_0
    const-string v0, "not be"

    goto :goto_0
.end method
