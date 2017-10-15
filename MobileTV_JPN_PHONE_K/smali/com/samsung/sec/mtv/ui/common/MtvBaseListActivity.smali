.class public abstract Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;
.super Landroid/app/ListActivity;
.source "MtvBaseListActivity.java"

# interfaces
.implements Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$UpdateDBRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvBaseListActivity"

.field protected static mCurrentAcitivity:Landroid/app/Activity;


# instance fields
.field public mMediaRouter:Landroid/media/MediaRouter;

.field public final mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

.field public final mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mPresentation:Landroid/app/Presentation;

.field protected mRotationObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mCurrentAcitivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mRotationObserver:Landroid/database/ContentObserver;

    .line 78
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 133
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 363
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->requestOrientation(I)V

    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 304
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mRotationObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 305
    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$3;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mRotationObserver:Landroid/database/ContentObserver;

    .line 317
    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 318
    .local v0, "mUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 319
    const-string v1, "MtvBaseListActivity"

    const-string v2, "registerContentObserver - mRotationObserver is registered"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v0    # "mUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private requestOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 74
    const-string v0, "MtvBaseListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested Orientation in BaseListActivity ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] System Values [1:Port 0:Land -1:UnSpecified]: Mtv Values [0:Port 1:Land 3:Reverse Landscape] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->setRequestedOrientation(I)V

    .line 76
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mRotationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mRotationObserver:Landroid/database/ContentObserver;

    .line 328
    const-string v0, "MtvBaseListActivity"

    const-string v1, "unregisterContentObserver - mRotationObserver is unregistered"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sput-object p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mCurrentAcitivity:Landroid/app/Activity;

    .line 53
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->registerListener(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V

    .line 54
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->registerContentObserver()V

    .line 55
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mCurrentAcitivity:Landroid/app/Activity;

    if-ne v0, p0, :cond_0

    .line 171
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mCurrentAcitivity:Landroid/app/Activity;

    .line 173
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->releaseCPUPartialWakeLock()V

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->unregisterListener(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V

    .line 176
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->unregisterContentObserver()V

    .line 177
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 178
    return-void
.end method

.method public onMtvAppFinishNotify(Ljava/lang/Object;)V
    .locals 2
    .param p1, "intent"    # Ljava/lang/Object;

    .prologue
    .line 335
    const-string v0, "MtvBaseListActivity"

    const-string v1, "onMtvAppFinishNotify() :: "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->finish()V

    .line 337
    return-void
.end method

.method public onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V
    .locals 10
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x6

    const/4 v2, 0x1

    .line 189
    const-string v6, "MtvBaseListActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMtvAppLiveBroadcastNotify()  :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sparse-switch p1, :sswitch_data_0

    .line 296
    const-string v6, "MtvBaseListActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMtvAppLiveBroadcastNotify()  :: notification - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not handled!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 194
    :sswitch_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isLowMemoryToLaunch()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 196
    const-string v6, "MtvBaseListActivity"

    const-string v7, "Memory is low in MobileTV... "

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->showLowMemoryPopup()V

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 209
    :sswitch_1
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 211
    check-cast v0, Landroid/content/Intent;

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    const/16 v4, 0xf

    .line 213
    .local v4, "mLowBatteryWarningLevel":I
    const-string v6, "status"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 216
    .local v2, "isCharging":Z
    :goto_1
    const-string v6, "scale"

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 217
    .local v5, "scale":I
    const-string v6, "level"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 218
    .local v3, "level":I
    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->setBatteryCharging(Z)V

    .line 219
    if-ge v3, v4, :cond_4

    if-nez v2, :cond_4

    .line 222
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 224
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->showLowBatteryPopup()V

    goto :goto_0

    .line 213
    .end local v2    # "isCharging":Z
    .end local v3    # "level":I
    .end local v5    # "scale":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 227
    .restart local v2    # "isCharging":Z
    .restart local v3    # "level":I
    .restart local v5    # "scale":I
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 232
    :cond_4
    invoke-static {v3, v5}, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->updateBatteryLevel(II)V

    goto :goto_0

    .line 239
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "isCharging":Z
    .end local v3    # "level":I
    .end local v4    # "mLowBatteryWarningLevel":I
    .end local v5    # "scale":I
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 241
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->showLowBatteryPopup()V

    goto :goto_0

    .line 245
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 251
    :sswitch_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 253
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v1, "intentPopup":Landroid/content/Intent;
    const-string v6, "com.samsung.sec.mtv.ACTION_MTV_POP_UP"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v6, "popup_type"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 262
    .end local v1    # "intentPopup":Landroid/content/Intent;
    :sswitch_4
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->is3LMEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 266
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 267
    .restart local v1    # "intentPopup":Landroid/content/Intent;
    const-string v6, "com.samsung.sec.mtv.ACTION_MTV_POP_UP"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v6, "popup_type"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 277
    .end local v1    # "intentPopup":Landroid/content/Intent;
    :sswitch_5
    if-ne p1, v9, :cond_7

    .line 279
    const-string v6, "MtvBaseListActivity"

    const v7, 0x7f070278

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_6
    :goto_2
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$UpdateDBRunnable;

    invoke-direct {v7}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$UpdateDBRunnable;-><init>()V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 281
    :cond_7
    const/4 v6, 0x4

    if-ne p1, v6, :cond_6

    .line 283
    const-string v6, "MtvBaseListActivity"

    const v7, 0x7f07027a

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 292
    :sswitch_6
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 190
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x6 -> :sswitch_5
        0x7 -> :sswitch_3
        0xe -> :sswitch_6
        0xf -> :sswitch_4
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 146
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 147
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 60
    sget v0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->preferred_orientation:I

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->requestOrientation(I)V

    .line 61
    sput-object p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mCurrentAcitivity:Landroid/app/Activity;

    .line 62
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setMtvVisibiltySettings(Landroid/content/Context;)Z

    .line 63
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->releaseCPUPartialWakeLock()V

    .line 66
    const-string v0, "media_router"

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mMediaRouter:Landroid/media/MediaRouter;

    .line 67
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->updatePresentation()V

    .line 69
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 152
    const-string v0, "MtvBaseListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop() :: isFinishing ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->resetMtvVisibiltySettings(Landroid/content/Context;)Z

    .line 154
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mCurrentAcitivity:Landroid/app/Activity;

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mCurrentAcitivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mCurrentAcitivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->aquireCPUPartialWakeLock(Landroid/content/Context;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    .line 161
    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 162
    return-void
.end method

.method protected showLowBatteryPopup()V
    .locals 3

    .prologue
    .line 341
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isBatteryLowPopupAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 344
    .local v0, "intentPopup":Landroid/content/Intent;
    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_POP_UP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v1, "popup_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->startActivity(Landroid/content/Intent;)V

    .line 348
    .end local v0    # "intentPopup":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected showLowMemoryPopup()V
    .locals 3

    .prologue
    .line 353
    const-string v1, "MtvBaseListActivity"

    const-string v2, "showLowMemoryPopup() ::"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isMemoryLowPopupAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v0, "intentPopup":Landroid/content/Intent;
    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_POP_UP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v1, "popup_type"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->startActivity(Landroid/content/Intent;)V

    .line 361
    .end local v0    # "intentPopup":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public updatePresentation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 97
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 99
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    const/4 v1, 0x0

    .line 101
    .local v1, "presentationDisplay":Landroid/view/Display;
    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v1

    .line 106
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v3}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v3

    if-eq v3, v1, :cond_1

    .line 107
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v3}, Landroid/app/Presentation;->dismiss()V

    .line 108
    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    .line 113
    new-instance v3, Landroid/app/Presentation;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    .line 114
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v3}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 115
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    const/high16 v4, 0x7f030000

    invoke-virtual {v3, v4}, Landroid/app/Presentation;->setContentView(I)V

    .line 116
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v4}, Landroid/app/Presentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 118
    :try_start_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v3}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_2
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ex":Landroid/view/WindowManager$InvalidDisplayException;
    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    goto :goto_0

    .line 122
    .end local v0    # "ex":Landroid/view/WindowManager$InvalidDisplayException;
    :cond_3
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 123
    const-string v3, "MtvBaseListActivity"

    const-string v4, "updatePresentation :: unhiding : doing mPresentation.show()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :try_start_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v3}, Landroid/app/Presentation;->show()V
    :try_end_1
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    .line 127
    .restart local v0    # "ex":Landroid/view/WindowManager$InvalidDisplayException;
    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    goto :goto_0
.end method
