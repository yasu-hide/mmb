.class Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$3;
.super Ljava/lang/Object;
.source "MtvConflictHandler.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$3;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFatalExeption()V
    .locals 2

    .prologue
    .line 555
    const-string v0, "MtvConflictHandler"

    const-string v1, "onFatalException called..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$3;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$300(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$3;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$300(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onCommunicationError()V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    const-string v0, "MtvConflictHandler"

    const-string v1, "mConflictListener is null"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceConnected()V
    .locals 2

    .prologue
    .line 539
    const-string v0, "MtvConflictHandler"

    const-string v1, "mMBServiceListener :: onServiceConnected"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$3;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$602(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;Z)Z

    .line 541
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$3;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$800(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    const-string v0, "MtvConflictHandler"

    const-string v1, "mMBServiceListener :: Close was Requested when Service Connection not established !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, "MtvConflictHandler"

    const-string v1, "mMBServiceListener :: Processing it now... !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$3;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->closeService()V

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$3;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->checkConflict()V

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 532
    const-string v0, "MtvConflictHandler"

    const-string v1, "mMBServiceListener :: onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$3;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-static {v0, v2}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$602(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;Z)Z

    .line 534
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$3;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-static {v0, v2}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$702(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;Z)Z

    .line 535
    return-void
.end method
