.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwAutoAuthenticateTransfer.java"

# interfaces
.implements Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;


# direct methods
.method private constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$1;)V
    .locals 0
    .param p1, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;
    .param p2, "x1"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$1;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)V

    return-void
.end method


# virtual methods
.method public onConnect()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 246
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;

    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->getAuthenticateData()[B

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->execute([Ljava/lang/Object;)I

    .line 255
    :goto_0
    monitor-exit v1

    .line 257
    return v5

    .line 251
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;

    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$400(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$ProcessListener;

    move-result-object v3

    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$500(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;)V

    invoke-static {v0, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$302(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .line 252
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;

    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->getAuthenticateData()[B

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->execute([Ljava/lang/Object;)I

    .line 253
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v2, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->startTimer(J)V

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisconnect()Z
    .locals 5

    .prologue
    .line 269
    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    monitor-enter v3

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, "doTerminate":Z
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$600(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    const-string v2, "!mIsInitialized"

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x1

    .line 277
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v2

    if-nez v2, :cond_1

    .line 278
    const-string v2, "null == mProcess"

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 279
    monitor-exit v3

    move v1, v0

    .line 292
    .end local v0    # "doTerminate":Z
    .local v1, "doTerminate":Z
    :goto_0
    return v1

    .line 282
    .end local v1    # "doTerminate":Z
    .restart local v0    # "doTerminate":Z
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v2

    instance-of v2, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$ThrowProcess;

    if-eqz v2, :cond_2

    .line 284
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$302(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .line 285
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$700(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    move-result-object v2

    invoke-interface {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;->onDisconnect()Z

    move-result v0

    .line 292
    :goto_1
    monitor-exit v3

    move v1, v0

    .end local v0    # "doTerminate":Z
    .restart local v1    # "doTerminate":Z
    goto :goto_0

    .line 288
    .end local v1    # "doTerminate":Z
    .restart local v0    # "doTerminate":Z
    :cond_2
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v2

    invoke-interface {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->cancel()V

    .line 289
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$302(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    goto :goto_1

    .line 293
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onPreReceive(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;)V
    .locals 4
    .param p1, "aInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    .prologue
    .line 305
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    monitor-enter v1

    .line 306
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v0

    if-nez v0, :cond_0

    .line 307
    const-string v0, "null == mProcess"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 308
    monitor-exit v1

    .line 321
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v0

    instance-of v0, v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$ThrowProcess;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$700(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;->onPreReceive(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;)V

    .line 319
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 316
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput v0, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mCount:I

    .line 317
    const-wide/16 v2, 0x2710

    iput-wide v2, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mTimeout:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onReceive(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "aData"    # Ljava/lang/Object;

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, "doDisconnect":Z
    iget-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    monitor-enter v5

    .line 335
    :try_start_0
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v4

    if-nez v4, :cond_0

    .line 336
    const-string v4, "null == mProcess"

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 337
    monitor-exit v5

    move v1, v0

    .line 360
    .end local v0    # "doDisconnect":Z
    .local v1, "doDisconnect":I
    :goto_0
    return v1

    .line 340
    .end local v1    # "doDisconnect":I
    .restart local v0    # "doDisconnect":Z
    :cond_0
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v2

    .line 343
    .local v2, "process":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    instance-of v4, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$ThrowProcess;

    if-eqz v4, :cond_1

    .line 344
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$700(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    move-result-object v4

    invoke-interface {v4, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;->onReceive(Ljava/lang/Object;)Z

    move-result v0

    .line 345
    monitor-exit v5

    move v1, v0

    .restart local v1    # "doDisconnect":I
    goto :goto_0

    .line 349
    .end local v1    # "doDisconnect":I
    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    invoke-interface {v2, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->execute([Ljava/lang/Object;)I

    move-result v3

    .line 350
    .local v3, "state":I
    invoke-interface {v2, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->isCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 351
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v4, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$800(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 352
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    new-instance v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$ThrowProcess;

    iget-object v7, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-direct {v6, v7}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$ThrowProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)V

    invoke-static {v4, v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$302(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .line 353
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->access$700(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    move-result-object v4

    invoke-interface {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;->onConnect()Z

    move-result v0

    .line 358
    :cond_2
    :goto_1
    monitor-exit v5

    move v1, v0

    .line 360
    .restart local v1    # "doDisconnect":I
    goto :goto_0

    .line 355
    .end local v1    # "doDisconnect":I
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 358
    .end local v2    # "process":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    .end local v3    # "state":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
