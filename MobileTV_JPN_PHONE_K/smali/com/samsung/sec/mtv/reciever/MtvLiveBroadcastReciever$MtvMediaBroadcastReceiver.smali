.class Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvMediaBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MtvLiveBroadcastReciever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtvMediaBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvMediaBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;
    .param p2, "x1"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvMediaBroadcastReceiver;-><init>(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 543
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "strAction":Ljava/lang/String;
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 546
    const-string v1, "MtvLiveBroadcastReciever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_0
    if-nez v0, :cond_2

    .line 565
    :cond_1
    :goto_0
    return-void

    .line 552
    :cond_2
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 553
    const-string v1, "MtvLiveBroadcastReciever"

    const-string v2, "MtvMediaBroadcastReceiver: ACTION_MEDIA_EJECT received"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvMediaBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyAllListener(ILandroid/content/Intent;)V

    goto :goto_0

    .line 555
    :cond_3
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 556
    const-string v1, "MtvLiveBroadcastReciever"

    const-string v2, "MtvMediaBroadcastReceiver: ACTION_MEDIA_UNMOUNTED received"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvMediaBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyAllListener(ILandroid/content/Intent;)V

    goto :goto_0

    .line 558
    :cond_4
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 559
    const-string v1, "MtvLiveBroadcastReciever"

    const-string v2, "MtvMediaBroadcastReceiver: ACTION_MEDIA_SCANNER_STARTED recevied"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvMediaBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyTopListener(ILandroid/content/Intent;)V

    goto :goto_0

    .line 561
    :cond_5
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    const-string v1, "MtvLiveBroadcastReciever"

    const-string v2, "MtvMediaBroadcastReceiver: ACTION_MEDIA_MOUNTED received"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvMediaBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyTopListener(ILandroid/content/Intent;)V

    goto :goto_0
.end method
