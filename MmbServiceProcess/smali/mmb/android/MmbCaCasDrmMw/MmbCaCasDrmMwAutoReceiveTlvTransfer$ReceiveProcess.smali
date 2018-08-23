.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;
.super Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;
.source "MmbCaCasDrmMwAutoReceiveTlvTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveProcess"
.end annotation


# instance fields
.field private mPreReceiveInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

.field private mReceiveData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

.field private mReceiveState:I

.field private mValueSize:I

.field final synthetic this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;


# direct methods
.method constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;)V
    .locals 1
    .param p2, "aListener"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;

    .prologue
    .line 326
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    .line 327
    invoke-direct {p0, p2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;)V

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I

    .line 316
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    invoke-direct {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mPreReceiveInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    .line 328
    return-void
.end method


# virtual methods
.method varargs action([Ljava/lang/Object;)I
    .locals 6
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 396
    aget-object v4, p1, v5

    instance-of v4, v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    if-eqz v4, :cond_0

    .line 397
    aget-object v0, p1, v5

    check-cast v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    .line 398
    .local v0, "aInfo":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;
    invoke-virtual {p0, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->onPreReceive(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;)I

    move-result v2

    .local v2, "ret":I
    move v3, v2

    .line 406
    .end local v0    # "aInfo":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;
    .end local v2    # "ret":I
    .local v3, "ret":I
    :goto_0
    return v3

    .line 403
    .end local v3    # "ret":I
    :cond_0
    aget-object v4, p1, v5

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 404
    .local v1, "buffer":[B
    invoke-virtual {p0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->onReceive([B)I

    move-result v2

    .restart local v2    # "ret":I
    move v3, v2

    .line 406
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_0
.end method

.method getReceiveData()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    return-object v0
.end method

.method getReceiveState()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I

    return v0
.end method

.method varargs onCanExecute([Ljava/lang/Object;)Z
    .locals 3
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 377
    aget-object v2, p1, v1

    instance-of v2, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    if-eqz v2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v0

    .line 380
    :cond_1
    aget-object v2, p1, v1

    instance-of v2, v2, [B

    if-nez v2, :cond_0

    move v0, v1

    .line 383
    goto :goto_0
.end method

.method onPreReceive(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;)I
    .locals 6
    .param p1, "aInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    .prologue
    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    .line 418
    const/4 v0, 0x1

    .line 420
    .local v0, "state":I
    iget v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I

    sparse-switch v1, :sswitch_data_0

    .line 447
    const-string v1, "mReceiveState == %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 448
    const/16 v1, 0x63

    iput v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I

    .line 449
    const/4 v0, 0x3

    .line 453
    :goto_0
    return v0

    .line 422
    :sswitch_0
    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    iput-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .line 423
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$500(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)I

    move-result v1

    iput v1, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mCount:I

    .line 424
    iput-wide v4, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mTimeout:J

    .line 425
    iput v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I

    goto :goto_0

    .line 429
    :sswitch_1
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mPreReceiveInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    iput v2, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mCount:I

    .line 430
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mPreReceiveInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    iput-wide v4, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mTimeout:J

    .line 431
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$400(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mPreReceiveInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    invoke-interface {v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;->onPreReceive(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;)V

    .line 433
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$600(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)I

    move-result v1

    iput v1, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mCount:I

    .line 434
    iput-wide v4, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mTimeout:J

    .line 435
    const/16 v1, 0xb

    iput v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I

    .line 437
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mPreReceiveInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    iget-wide v2, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mTimeout:J

    invoke-virtual {p0, v2, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->startTimer(J)V

    goto :goto_0

    .line 441
    :sswitch_2
    iget v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mValueSize:I

    iput v1, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mCount:I

    .line 442
    iput-wide v4, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mTimeout:J

    .line 443
    const/16 v1, 0x15

    iput v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I

    goto :goto_0

    .line 420
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
    .end sparse-switch
.end method

.method onReceive([B)I
    .locals 6
    .param p1, "aBuffer"    # [B

    .prologue
    .line 465
    const/4 v1, 0x1

    .line 467
    .local v1, "state":I
    iget v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I

    sparse-switch v2, :sswitch_data_0

    .line 485
    const-string v2, "mReceiveState == %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 486
    const/16 v2, 0x63

    iput v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I

    .line 487
    const/4 v1, 0x3

    .line 491
    :goto_0
    return v1

    .line 469
    :sswitch_0
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    iput-object p1, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mType:[B

    .line 470
    const/16 v2, 0xa

    iput v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I

    goto :goto_0

    .line 474
    :sswitch_1
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v2, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$700(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;[B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 475
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mValueSize:I

    .line 476
    const/16 v2, 0x14

    iput v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I

    goto :goto_0

    .line 480
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :sswitch_2
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    iput-object p1, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 481
    const/16 v2, 0x1e

    iput v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I

    goto :goto_0

    .line 467
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method declared-synchronized onTimeout()V
    .locals 1

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v0, :sswitch_data_0

    .line 514
    :goto_0
    monitor-exit p0

    return-void

    .line 509
    :sswitch_0
    :try_start_1
    invoke-super {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->onTimeout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method declared-synchronized resetReceiveState()V
    .locals 1

    .prologue
    .line 362
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveState:I

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->mReceiveData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .line 364
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->cancelTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    monitor-exit p0

    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
