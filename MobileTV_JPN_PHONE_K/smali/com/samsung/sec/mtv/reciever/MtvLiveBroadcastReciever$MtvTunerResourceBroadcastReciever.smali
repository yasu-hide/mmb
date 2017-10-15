.class Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvTunerResourceBroadcastReciever;
.super Landroid/content/BroadcastReceiver;
.source "MtvLiveBroadcastReciever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtvTunerResourceBroadcastReciever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvTunerResourceBroadcastReciever;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;
    .param p2, "x1"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;

    .prologue
    .line 568
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvTunerResourceBroadcastReciever;-><init>(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 574
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "strAction":Ljava/lang/String;
    const-string v2, "MtvLiveBroadcastReciever"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MtvTunerResourceBroadcastReciever :: onRecieve()  :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v2, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvTunerResourceBroadcastReciever;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isMiniModeRunning(Landroid/content/Context;)Z

    move-result v0

    .line 577
    .local v0, "isMinimodeRunning":Z
    const-string v2, "com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    const-string v2, "MtvLiveBroadcastReciever"

    const-string v3, " MmbFwTmmConstantsSv.ACTION_TUNER_RELEASE : Tuner release Request from Tmm obtained... Closing OneSeg... "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    if-nez v0, :cond_0

    .line 581
    iget-object v2, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvTunerResourceBroadcastReciever;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v2, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->finishAllListners(Landroid/content/Intent;)V

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    const-string v2, "com.nttdocomo.mmb.android.mmbsv.intent.INTENT_TUNER_RELEASE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    const-string v2, "MtvLiveBroadcastReciever"

    const-string v3, " MmbFwTmmConstantsSv.INTENT_TUNER_RELEASE : Tuner release Request from Tmm obtained... Closing OneSeg... "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    if-nez v0, :cond_0

    .line 588
    iget-object v2, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvTunerResourceBroadcastReciever;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v2, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->finishAllListners(Landroid/content/Intent;)V

    goto :goto_0
.end method
