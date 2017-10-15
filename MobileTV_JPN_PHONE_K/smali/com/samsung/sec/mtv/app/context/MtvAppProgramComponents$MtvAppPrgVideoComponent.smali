.class public Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;
.super Ljava/lang/Object;
.source "MtvAppProgramComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtvAppPrgVideoComponent"
.end annotation


# instance fields
.field private captFrame:Landroid/graphics/Bitmap;

.field private captFrameName:Ljava/lang/String;

.field private iface:Landroid/broadcast/IMtvOneSegVideoControl;

.field private isEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->init()V

    .line 290
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->isEnabled:Z

    .line 280
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->iface:Landroid/broadcast/IMtvOneSegVideoControl;

    .line 281
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->captFrame:Landroid/graphics/Bitmap;

    .line 282
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->captFrameName:Ljava/lang/String;

    .line 283
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->isEnabled:Z

    .line 303
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->iface:Landroid/broadcast/IMtvOneSegVideoControl;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->iface:Landroid/broadcast/IMtvOneSegVideoControl;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegVideoControl;->disableVideo()Z

    .line 305
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->isEnabled:Z

    .line 298
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->iface:Landroid/broadcast/IMtvOneSegVideoControl;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->iface:Landroid/broadcast/IMtvOneSegVideoControl;

    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegVideoControl;->enableVideo()Z

    .line 300
    :cond_0
    return-void
.end method

.method public declared-synchronized getCaptFrame()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->captFrame:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCaptFrameName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->captFrameName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;
    .locals 1

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->iface:Landroid/broadcast/IMtvOneSegVideoControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->isEnabled:Z

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->init()V

    .line 294
    return-void
.end method

.method public declared-synchronized setCaptFrame(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "captFrame"    # Landroid/graphics/Bitmap;

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->isEnabled:Z

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->captFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->captFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    const-string v0, "MtvAppProgramComponents"

    const-string v1, "Previous Bitmap recycled..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->captFrame:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :cond_1
    monitor-exit p0

    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCaptFrameName(Ljava/lang/String;)V
    .locals 1
    .param p1, "thumbnailName"    # Ljava/lang/String;

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 352
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->captFrameName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :cond_0
    monitor-exit p0

    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setControlInterface(Landroid/broadcast/IMtvOneSegVideoControl;)V
    .locals 1
    .param p1, "in"    # Landroid/broadcast/IMtvOneSegVideoControl;

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->iface:Landroid/broadcast/IMtvOneSegVideoControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
