.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwAutoReceiveTlvTransfer.java"

# interfaces
.implements Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;


# direct methods
.method private constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$1;)V
    .locals 0
    .param p1, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;
    .param p2, "x1"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$1;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)V

    return-void
.end method


# virtual methods
.method public onConnect()Z
    .locals 5

    .prologue
    .line 188
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ProcessListener;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;)V

    invoke-static {v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$202(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    .line 189
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$400(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    move-result-object v1

    invoke-interface {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;->onConnect()Z

    move-result v0

    .line 191
    .local v0, "doDisconnect":Z
    return v0
.end method

.method public onDisconnect()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$200(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    move-result-object v1

    if-nez v1, :cond_0

    .line 244
    const-string v1, "mReceiveProcess == null"

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    .line 250
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$200(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    move-result-object v1

    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->cancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v1, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$202(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    .line 257
    :goto_1
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$400(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    move-result-object v1

    invoke-interface {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;->onDisconnect()Z

    move-result v0

    .line 259
    .local v0, "doTerminate":Z
    goto :goto_0

    .line 251
    .end local v0    # "doTerminate":Z
    :catch_0
    move-exception v1

    .line 253
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v1, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$202(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v2, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$202(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    throw v1
.end method

.method public onPreReceive(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;)V
    .locals 4
    .param p1, "aInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    .prologue
    .line 203
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$200(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->execute([Ljava/lang/Object;)I

    move-result v0

    .line 204
    .local v0, "state":I
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$200(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->isCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onReceive(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "aData"    # Ljava/lang/Object;

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, "doDisconnect":Z
    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$200(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->execute([Ljava/lang/Object;)I

    move-result v2

    .line 224
    .local v2, "state":I
    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$200(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->isCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    const/4 v0, 0x1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    const/16 v3, 0x1e

    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$200(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    move-result-object v4

    invoke-virtual {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->getReceiveState()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 227
    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$200(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    move-result-object v3

    invoke-virtual {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->getReceiveData()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v1

    .line 228
    .local v1, "receiveData":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$200(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    move-result-object v3

    invoke-virtual {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;->resetReceiveState()V

    .line 229
    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;->this$0:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->access$400(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    move-result-object v3

    invoke-interface {v3, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;->onReceive(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
