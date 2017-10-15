.class Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "MtvMiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v10, 0x7f07027e

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 569
    const-string v7, "MtvMiniModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1700(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 572
    const-string v6, "MtvMiniModeService"

    const-string v7, "ACTION_SCREEN_ON"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_2
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 574
    const-string v6, "MtvMiniModeService"

    const-string v7, "ACTION_SCREEN_OFF"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    sget-object v6, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->classname:Ljava/lang/String;

    const-string v7, "MtvUiFilePlayer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 581
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1800(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V

    goto :goto_0

    .line 588
    :cond_3
    const-string v7, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 589
    const-string v6, "MtvMiniModeService"

    const-string v7, "mReceiver - receive ACTION_AUDIO_BECOMING_NOISY"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1900(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isBTConnected()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->classname:Ljava/lang/String;

    const-string v7, "MtvUiFilePlayer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 591
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1800(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V

    goto :goto_0

    .line 593
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 594
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2000(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f07026a

    invoke-static {v7, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 595
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v6, v10}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2100(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;I)V

    goto/16 :goto_0

    .line 598
    :cond_5
    const-string v7, "intent.stop.app-in-app"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 599
    const-string v7, "stopFromDtv"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 600
    .local v1, "bIsStopFromDtv":Z
    const-string v7, "MtvMiniModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bIsStopFromDtv: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    if-nez v1, :cond_0

    .line 603
    const/4 v5, 0x0

    .line 604
    .local v5, "topActivityName":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 605
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_6

    .line 606
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 608
    :cond_6
    if-eqz v5, :cond_7

    .line 609
    const-string v6, "MtvMiniModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "topActivityName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_7
    if-eqz v5, :cond_0

    const-string v6, "com.samsung.sec.mtv.ui"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 611
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v6, v10}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2100(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;I)V

    goto/16 :goto_0

    .line 629
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "bIsStopFromDtv":Z
    .end local v5    # "topActivityName":Ljava/lang/String;
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MTV_MINIMODE_AUDIO_FOCUS_LOSS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 630
    sget-object v6, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->classname:Ljava/lang/String;

    const-string v7, "MtvUiFilePlayer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 631
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1800(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V

    goto/16 :goto_0

    .line 634
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.samsung.sec.mtv.ACTION_MTV_SLEEP_TIMER_ALARM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 635
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    const v7, 0x7f0701f0

    invoke-static {v6, v7}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2100(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;I)V

    goto/16 :goto_0

    .line 638
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 639
    const-string v7, "MtvMiniModeService"

    const-string v8, "Minimode ::Antenna close event received"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2200(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v7

    if-nez v7, :cond_b

    .line 641
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    new-instance v8, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v8}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2202(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 643
    :cond_b
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2200(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAntennaOnOff()I

    move-result v7

    if-ne v7, v3, :cond_c

    .line 644
    .local v3, "isDTVAutoStarton":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 645
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v6, v10}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2100(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;I)V

    goto/16 :goto_0

    .end local v3    # "isDTVAutoStarton":Z
    :cond_c
    move v3, v6

    .line 643
    goto :goto_1

    .line 648
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 652
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "extSdCard"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->classname:Ljava/lang/String;

    const-string v7, "MtvUiFilePlayer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 653
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v6, v10}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2100(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;I)V

    goto/16 :goto_0

    .line 655
    :cond_f
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2000(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isConflictHandlerEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.nttdocomo.mmb.android.mmbsv.intent.INTENT_TUNER_RELEASE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 659
    :cond_10
    const-string v6, "MtvMiniModeService"

    const-string v7, "Minimode :: Tuner release Request from Tmm obtained... Closing OneSeg... "

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v6, v10}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2100(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;I)V

    goto/16 :goto_0

    .line 662
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.samsung.cover.OPEN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 664
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isSCoverModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 665
    const-string v7, "coverOpen"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 666
    .local v4, "mSViewCoverOpened":Z
    if-nez v4, :cond_0

    .line 667
    const-string v6, "MtvMiniModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "classname : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->classname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    sget-object v6, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->classname:Ljava/lang/String;

    const-string v7, "MtvUiLivePlayer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    sget-object v6, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->classname:Ljava/lang/String;

    const-string v7, "MtvUiFilePlayer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 669
    :cond_12
    const-string v6, "MtvMiniModeService"

    const-string v7, "Minimode :: S Cover closed... Closing minimode... "

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 671
    .local v2, "coverIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 672
    const-string v6, "directLaunch"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 673
    sget-object v6, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->classname:Ljava/lang/String;

    const-string v7, "MtvUiFilePlayer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 674
    const-string v6, "isStartedFromMiniMode"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 675
    const-string v6, "selectedFileIndex"

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2300(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 677
    :cond_13
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v6, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->startActivity(Landroid/content/Intent;)V

    .line 678
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->stopSelf()V

    goto/16 :goto_0

    .line 685
    .end local v2    # "coverIntent":Landroid/content/Intent;
    .end local v4    # "mSViewCoverOpened":Z
    :cond_14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.action.emergencylockenabled"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 687
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    const v7, 0x7f070299

    invoke-static {v6, v7}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2100(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;I)V

    goto/16 :goto_0
.end method
