.class Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$2;
.super Ljava/lang/Object;
.source "MtvOneSegRemoteService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V
    .locals 0

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$2;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1223
    const-string v0, "MtvOneSegRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scan Timer Fired -- No Data from Tuner Yet! -- No more waiting for the current chnl ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1700()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] switching to the next!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$2;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/16 v1, 0x133

    const/16 v2, 0xca

    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1700()I

    move-result v3

    invoke-static {v4, v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    .line 1229
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1708()I

    .line 1231
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$2;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1800(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V

    .line 1232
    return-void
.end method
