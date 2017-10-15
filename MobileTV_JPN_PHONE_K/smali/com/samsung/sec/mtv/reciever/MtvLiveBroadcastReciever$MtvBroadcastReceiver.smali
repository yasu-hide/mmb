.class Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MtvLiveBroadcastReciever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtvBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;
    .param p2, "x1"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;-><init>(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 270
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, "strAction":Ljava/lang/String;
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 272
    const-string v7, "MtvLiveBroadcastReciever"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive() :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    if-nez v6, :cond_2

    .line 537
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 278
    :cond_3
    const-string v7, "MtvLiveBroadcastReciever"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_MTV_APP_FINISH: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setAppExiting(Z)V

    .line 280
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v7, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->finishAllListners(Landroid/content/Intent;)V

    goto :goto_0

    .line 282
    :cond_4
    const-string v7, "com.samsung.android.motion.PALM_DOWN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 283
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "palm dowm"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {p1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    goto :goto_0

    .line 286
    :cond_5
    const-string v7, "com.samsung.android.motion.PALM_UP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 287
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "palm up"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {p1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    goto :goto_0

    .line 290
    :cond_6
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 291
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "screen unlock"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v8, 0x17

    invoke-virtual {v7, v8, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyTopListener(ILandroid/content/Intent;)V

    goto :goto_0

    .line 294
    :cond_7
    const-string v7, "android.intent.action.TIME_TICK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 295
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "ACTION_TIME_TICK recivied"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyBaseListener(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 297
    :cond_8
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 298
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "ACTION_BATTERY_CHANGED recevied"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyTopListener(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 300
    :cond_9
    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 301
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "ACTION_HEADSET_PLUG received"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v8, 0x9

    invoke-virtual {v7, v8, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyAllListener(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 305
    :cond_a
    const-string v7, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 306
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "ACTION_MTV_AUDIO_BECOMING_NOISY received"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v8, 0x1a

    invoke-virtual {v7, v8, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyAllListener(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 309
    :cond_b
    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_FOREGROUND"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 310
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "ACTION_MTV_APP_FINISH_FOREGROUND received"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :cond_c
    const-string v7, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 313
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "ACTION_BATTERY_LOW received"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 317
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 318
    .local v2, "intentPopup":Landroid/content/Intent;
    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_POP_UP"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string v7, "popup_type"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyTopListener(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 324
    .end local v2    # "intentPopup":Landroid/content/Intent;
    :cond_d
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 329
    :cond_e
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->is3LMEnabled()Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "android.action.emergencylockenabled"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 330
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 332
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 333
    .restart local v2    # "intentPopup":Landroid/content/Intent;
    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_POP_UP"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v7, "popup_type"

    const/4 v8, 0x6

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v8, 0xf

    invoke-virtual {v7, v8, v2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyTopListener(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 339
    .end local v2    # "intentPopup":Landroid/content/Intent;
    :cond_f
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 343
    :cond_10
    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_SLEEP_TIMER_ALARM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 344
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "ACTION_MTV_SLEEP_TIMER_ALARM received"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 347
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 348
    .restart local v2    # "intentPopup":Landroid/content/Intent;
    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_POP_UP"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v7, "popup_type"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/4 v8, 0x7

    invoke-virtual {v7, v8, v2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyTopListener(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 354
    .end local v2    # "intentPopup":Landroid/content/Intent;
    :cond_11
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 357
    :cond_12
    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_END"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 358
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "ACTION_MTV_RESERVATION_END received"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v8, 0xa

    invoke-virtual {v7, v8, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyTopListener(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 360
    :cond_13
    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_CANCEL_EXIT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 361
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "ACTION_MTV_RESERVATION_CANCEL_EXIT received"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v8, 0xa

    invoke-virtual {v7, v8, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyTopListener(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 363
    :cond_14
    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_END_DIALOG_CLOSE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 364
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "ACTION_MTV_RESERVATION_END_DIALOG_CLOSE received"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v8, 0xc

    invoke-virtual {v7, v8, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyTopListener(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 413
    :cond_15
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 414
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyBaseListener(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 417
    :cond_16
    const-string v7, "com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 418
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "AUTO ANTENNA CLOSE BROADCAST RECEIVER."

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-static {v7}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->access$400(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v7

    if-nez v7, :cond_17

    .line 421
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    new-instance v8, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v9, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v8}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->access$402(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 423
    :cond_17
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-static {v7}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->access$400(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAntennaOnOff()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_18

    const/4 v3, 0x1

    .line 424
    .local v3, "isDTVAutoStarton":Z
    :goto_1
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isMiniModeRunning(Landroid/content/Context;)Z

    move-result v4

    .line 425
    .local v4, "isMinimodeRunning":Z
    if-eqz v3, :cond_1

    if-nez v4, :cond_1

    .line 427
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v8, 0x11

    invoke-virtual {v7, v8, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyTopListener(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 423
    .end local v3    # "isDTVAutoStarton":Z
    .end local v4    # "isMinimodeRunning":Z
    :cond_18
    const/4 v3, 0x0

    goto :goto_1

    .line 499
    :cond_19
    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_SVIEW_FINISH_START_LIVE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 500
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "ACTION_MTV_SVIEW_FINISH_START_LIVE received"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v8, 0x14

    invoke-virtual {v7, v8, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyTopListener(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 502
    :cond_1a
    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_SVIEW_FINISH"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 503
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "ACTION_MTV_SVIEW_FINISH received"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v8, 0x15

    invoke-virtual {v7, v8, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyTopListener(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 505
    :cond_1b
    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_CLOSE_FROM_NOTIFICATION"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 506
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "ACTION_MTV_RESERVATION_CLOSE_FROM_NOTIFICATION recevied"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v8, 0x16

    invoke-virtual {v7, v8, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyTopListener(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 508
    :cond_1c
    const-string v7, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 509
    const-string v7, "MtvLiveBroadcastReciever"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recievedIntent ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v7, "android.bluetooth.profile.extra.STATE"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 511
    .local v1, "btState":I
    const/4 v7, 0x2

    if-eq v1, v7, :cond_1d

    const/4 v7, 0x1

    if-ne v1, v7, :cond_1

    .line 512
    :cond_1d
    sget-boolean v7, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isFocused:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 513
    const-string v7, "MtvLiveBroadcastReciever"

    const-string v8, "BluetoothA2dp.STATE_CONNECTED or BluetoothA2dp.STATE_CONNECTING"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 515
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothAdapter;->setScmstContentProtection(Z)Z

    goto/16 :goto_0

    .line 526
    .end local v0    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "btState":I
    :cond_1e
    const-string v7, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 527
    const-string v7, "reason"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 528
    .local v5, "reason":I
    const-string v7, "MtvLiveBroadcastReciever"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "emergency mode or ultra power saving mode is enabled. reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const/4 v7, 0x3

    if-eq v5, v7, :cond_1f

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    .line 530
    :cond_1f
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 532
    .end local v5    # "reason":I
    :cond_20
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 534
    iget-object v7, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v8, 0x1c

    invoke-virtual {v7, v8, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyAllListener(ILandroid/content/Intent;)V

    goto/16 :goto_0
.end method
