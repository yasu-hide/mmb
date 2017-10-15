.class Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;
.super Ljava/lang/Object;
.source "MtvUiLauncher.java"

# interfaces
.implements Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMtvAppFinishNotify(Ljava/lang/Object;)V
    .locals 2
    .param p1, "intent"    # Ljava/lang/Object;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    new-instance v1, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1$1;-><init>(Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method public onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 187
    const-string v5, "MtvUiLauncher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " onMtvAppLiveBroadcastNotify...what "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sparse-switch p1, :sswitch_data_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 190
    :sswitch_0
    const-string v5, "MtvUiLauncher"

    const-string v6, "MtvLiveBroadcastListener.MTVAPP_ANDROID_SERVICE_RESERVATION_END..."

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->access$000()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v3

    .line 192
    .local v3, "mReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x7

    invoke-static {v5, v3, v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 193
    const-string v5, "MtvUiLauncher"

    const-string v6, "OneSeg Launch Cancelled !"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isConflictHandlerEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->closeServiceAndFinish()V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->finish()V

    goto :goto_0

    .line 201
    .end local v3    # "mReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :sswitch_1
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 203
    check-cast v0, Landroid/content/Intent;

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "status"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 205
    .local v1, "isCharging":Z
    :goto_1
    const-string v5, "scale"

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 206
    .local v4, "scale":I
    const-string v5, "level"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 207
    .local v2, "level":I
    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->setBatteryCharging(Z)V

    .line 209
    const-string v5, "MtvUiLauncher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  MTVAPP_ANDROID_SERVICE_BATTERYCHANGE level "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isCharging "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/16 v5, 0xf

    if-ge v2, v5, :cond_4

    if-nez v1, :cond_4

    .line 213
    const-string v5, "MtvUiLauncher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " MTVAPP_ANDROID_SERVICE_BATTERYCHANGE isInForeGround "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 217
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->showLowBatteryPopup()V

    goto/16 :goto_0

    .line 204
    .end local v1    # "isCharging":Z
    .end local v2    # "level":I
    .end local v4    # "scale":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 220
    .restart local v1    # "isCharging":Z
    .restart local v2    # "level":I
    .restart local v4    # "scale":I
    :cond_3
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 224
    :cond_4
    invoke-static {v2, v4}, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->updateBatteryLevel(II)V

    goto/16 :goto_0

    .line 188
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method
