.class public Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;
.super Ljava/lang/Object;
.source "MtvAppProgramComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtvAppPrgBmlComponent"
.end annotation


# instance fields
.field private iface:Landroid/broadcast/IMtvOneSegBmlViewControl;

.field private isEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->init()V

    .line 465
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->isEnabled:Z

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->iface:Landroid/broadcast/IMtvOneSegBmlViewControl;

    .line 458
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->isEnabled:Z

    .line 477
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->iface:Landroid/broadcast/IMtvOneSegBmlViewControl;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->iface:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->disableBml()V

    .line 479
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->isEnabled:Z

    .line 472
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->iface:Landroid/broadcast/IMtvOneSegBmlViewControl;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->iface:Landroid/broadcast/IMtvOneSegBmlViewControl;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegBmlViewControl;->enableBml()V

    .line 474
    :cond_0
    return-void
.end method

.method public declared-synchronized getControlInterface()Landroid/broadcast/IMtvOneSegBmlViewControl;
    .locals 1

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->iface:Landroid/broadcast/IMtvOneSegBmlViewControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->isEnabled:Z

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->init()V

    .line 469
    return-void
.end method

.method public declared-synchronized setControlInterface(Landroid/broadcast/IMtvOneSegBmlViewControl;)V
    .locals 1
    .param p1, "in"    # Landroid/broadcast/IMtvOneSegBmlViewControl;

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->iface:Landroid/broadcast/IMtvOneSegBmlViewControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    monitor-exit p0

    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
