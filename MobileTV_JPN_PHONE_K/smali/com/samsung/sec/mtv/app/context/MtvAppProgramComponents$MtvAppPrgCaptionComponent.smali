.class public Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;
.super Ljava/lang/Object;
.source "MtvAppProgramComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtvAppPrgCaptionComponent"
.end annotation


# instance fields
.field private captBuffer:Landroid/text/SpannableStringBuilder;

.field private iface:Landroid/broadcast/IMtvOneSegCaptionControl;

.field private isEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->init()V

    .line 387
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->isEnabled:Z

    .line 378
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->iface:Landroid/broadcast/IMtvOneSegCaptionControl;

    .line 379
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->captBuffer:Landroid/text/SpannableStringBuilder;

    .line 380
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->isEnabled:Z

    .line 400
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->iface:Landroid/broadcast/IMtvOneSegCaptionControl;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->iface:Landroid/broadcast/IMtvOneSegCaptionControl;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegCaptionControl;->disableCaption()Z

    .line 402
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->isEnabled:Z

    .line 395
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->iface:Landroid/broadcast/IMtvOneSegCaptionControl;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->iface:Landroid/broadcast/IMtvOneSegCaptionControl;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegCaptionControl;->enableCaption()Z

    .line 397
    :cond_0
    return-void
.end method

.method public declared-synchronized getBuffer()Landroid/text/SpannableStringBuilder;
    .locals 1

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->captBuffer:Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getControlInterface()Landroid/broadcast/IMtvOneSegCaptionControl;
    .locals 1

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->iface:Landroid/broadcast/IMtvOneSegCaptionControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->isEnabled:Z

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->init()V

    .line 391
    return-void
.end method

.method public declared-synchronized setBuffer(Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p1, "captBuff"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->captBuffer:Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit p0

    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setControlInterface(Landroid/broadcast/IMtvOneSegCaptionControl;)V
    .locals 1
    .param p1, "in"    # Landroid/broadcast/IMtvOneSegCaptionControl;

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->iface:Landroid/broadcast/IMtvOneSegCaptionControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    monitor-exit p0

    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
