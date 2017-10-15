.class public abstract Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;
.super Landroid/app/Activity;
.source "MtvBaseActivity.java"

# interfaces
.implements Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$UpdateDBRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvBaseActivity"

.field protected static mCurrentAcitivity:Landroid/app/Activity;


# instance fields
.field protected mBaseActivityhandler:Landroid/os/Handler;

.field public mMediaRouter:Landroid/media/MediaRouter;

.field public final mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

.field protected mRotationObserver:Landroid/database/ContentObserver;

.field private mRunnableUpdateTvFilesDb:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mCurrentAcitivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 54
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mRotationObserver:Landroid/database/ContentObserver;

    .line 201
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 259
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$3;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mBaseActivityhandler:Landroid/os/Handler;

    .line 262
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$4;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mRunnableUpdateTvFilesDb:Ljava/lang/Runnable;

    .line 504
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mRunnableUpdateTvFilesDb:Ljava/lang/Runnable;

    return-object v0
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 116
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mRotationObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mRotationObserver:Landroid/database/ContentObserver;

    .line 136
    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    .local v0, "mUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    const-string v1, "MtvBaseActivity"

    const-string v2, "registerContentObserver - mRotationObserver is registered"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v0    # "mUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mRotationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mRotationObserver:Landroid/database/ContentObserver;

    .line 147
    const-string v0, "MtvBaseActivity"

    const-string v1, "unregisterContentObserver - mRotationObserver is unregistered"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public isMobileTvNotOnTop(Landroid/content/Context;)Z
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 223
    const-string v1, "com.samsung.sec.mtv"

    .line 224
    .local v1, "classpkgName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 225
    .local v2, "topActivityName":Ljava/lang/String;
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 226
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 228
    :cond_0
    if-eqz v2, :cond_2

    .line 229
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 230
    const-string v3, "MtvBaseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HomeKeyPresses :topActivityName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 236
    :goto_0
    return v3

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sput-object p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mCurrentAcitivity:Landroid/app/Activity;

    .line 60
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->registerListener(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V

    .line 61
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->registerContentObserver()V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "isBaseBroadcastListener"    # Z

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sput-object p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mCurrentAcitivity:Landroid/app/Activity;

    .line 68
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->registerBaseListener(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->registerContentObserver()V

    .line 71
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->unregisterListener(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V

    .line 242
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mCurrentAcitivity:Landroid/app/Activity;

    if-ne v0, p0, :cond_0

    .line 246
    sput-object v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mCurrentAcitivity:Landroid/app/Activity;

    .line 247
    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    .line 249
    sput-object v1, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    .line 252
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->releaseCPUPartialWakeLock()V

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->unregisterContentObserver()V

    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 256
    return-void
.end method

.method public onMtvAppFinishNotify(Ljava/lang/Object;)V
    .locals 2
    .param p1, "intent"    # Ljava/lang/Object;

    .prologue
    .line 460
    const-string v0, "MtvBaseActivity"

    const-string v1, "onMtvAppFinishNotify() :: "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->finish()V

    .line 462
    return-void
.end method

.method public onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V
    .locals 16
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 294
    const-string v13, "MtvBaseActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onMtvAppLiveBroadcastNotify()  :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sparse-switch p1, :sswitch_data_0

    .line 453
    const-string v13, "MtvBaseActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onMtvAppLiveBroadcastNotify()  :: notification - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not handled!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 299
    :sswitch_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isLowMemoryToLaunch()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 301
    const-string v13, "MtvBaseActivity"

    const-string v14, "Memory is low in MobileTV... "

    invoke-static {v13, v14}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->showLowMemoryPopup()V

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 314
    :sswitch_1
    if-eqz p2, :cond_0

    move-object/from16 v4, p2

    .line 316
    check-cast v4, Landroid/content/Intent;

    .line 317
    .local v4, "intent":Landroid/content/Intent;
    const-string v13, "status"

    const/4 v14, 0x1

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    const/4 v6, 0x1

    .line 320
    .local v6, "isCharging":Z
    :goto_1
    const-string v13, "scale"

    const/16 v14, 0x64

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 321
    .local v11, "scale":I
    const-string v13, "level"

    invoke-virtual {v4, v13, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 322
    .local v7, "level":I
    invoke-static {v6}, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->setBatteryCharging(Z)V

    .line 323
    const/16 v13, 0xf

    if-ge v7, v13, :cond_4

    if-nez v6, :cond_4

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->showLowBatteryPopup()V

    goto :goto_0

    .line 317
    .end local v6    # "isCharging":Z
    .end local v7    # "level":I
    .end local v11    # "scale":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 331
    .restart local v6    # "isCharging":Z
    .restart local v7    # "level":I
    .restart local v11    # "scale":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 336
    :cond_4
    invoke-static {v7, v11}, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->updateBatteryLevel(II)V

    goto :goto_0

    .line 343
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "isCharging":Z
    .end local v7    # "level":I
    .end local v11    # "scale":I
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->showLowBatteryPopup()V

    goto/16 :goto_0

    .line 349
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 355
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->isFinishing()Z

    move-result v13

    if-nez v13, :cond_0

    .line 357
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 358
    .local v5, "intentPopup":Landroid/content/Intent;
    const-string v13, "com.samsung.sec.mtv.ACTION_MTV_POP_UP"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v13, "popup_type"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 366
    .end local v5    # "intentPopup":Landroid/content/Intent;
    :sswitch_4
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->is3LMEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->isFinishing()Z

    move-result v13

    if-nez v13, :cond_0

    .line 370
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 371
    .restart local v5    # "intentPopup":Landroid/content/Intent;
    const-string v13, "com.samsung.sec.mtv.ACTION_MTV_POP_UP"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string v13, "popup_type"

    const/4 v14, 0x6

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 381
    .end local v5    # "intentPopup":Landroid/content/Intent;
    :sswitch_5
    const/4 v13, 0x6

    move/from16 v0, p1

    if-ne v0, v13, :cond_7

    .line 383
    const-string v13, "MtvBaseActivity"

    const-string v14, "Memory card inserted"

    invoke-static {v13, v14}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mBaseActivityhandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mRunnableUpdateTvFilesDb:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mBaseActivityhandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mRunnableUpdateTvFilesDb:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 385
    :cond_7
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v0, v13, :cond_6

    .line 387
    const-string v13, "MtvBaseActivity"

    const-string v14, "Memory card removed"

    invoke-static {v13, v14}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 396
    :sswitch_6
    const/4 v13, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 402
    :sswitch_7
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v8

    .line 403
    .local v8, "mMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v8, :cond_c

    .line 404
    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v13

    const/16 v14, 0x5007

    if-ne v13, v14, :cond_a

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->isResumed()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 408
    const-string v13, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 409
    .local v1, "activityManager":Landroid/app/ActivityManager;
    const v13, 0x7fffffff

    invoke-virtual {v1, v13}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v12

    .line 411
    .local v12, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_9

    .line 413
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 414
    .local v2, "currentService":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v13, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.samsung.sec.mtv"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 416
    iget-object v13, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 418
    const-string v13, "MtvBaseActivity"

    const-string v14, "MtvUiPopUpActivity is already running"

    invoke-static {v13, v14}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 423
    .end local v2    # "currentService":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_9
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 424
    .restart local v5    # "intentPopup":Landroid/content/Intent;
    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.samsung.sec.mtv"

    const-string v15, "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 425
    const-string v13, "com.samsung.sec.mtv.ACTION_MTV_POP_UP"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v13, "popup_type"

    const/16 v14, 0x9

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 432
    .end local v1    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "i1":I
    .end local v5    # "intentPopup":Landroid/content/Intent;
    .end local v12    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_a
    new-instance v10, Landroid/content/Intent;

    const-string v13, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-direct {v10, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v10, "newIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 435
    const-string v13, "antenna_close"

    const/4 v14, 0x1

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 437
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 438
    const-string v13, "MtvBaseActivity"

    const-string v14, " Sending Broadcast ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-static {v13, v14}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 441
    .end local v10    # "newIntent":Landroid/content/Intent;
    :cond_c
    const-string v13, "MtvBaseActivity"

    const-string v14, "mMtvAppPlaybackContext is null so ignore"

    invoke-static {v13, v14}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 446
    .end local v8    # "mMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v9

    .line 447
    .local v9, "mMtvAudMgr":Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
    const-string v14, "MtvBaseActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MTVAPP_ANDRIOD_SERVICE_HEADSET isHeadsetConnected:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v9, :cond_d

    move-object v13, v9

    :goto_4
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isHeadsetConnected()Z

    move-result v13

    if-nez v13, :cond_0

    .line 449
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v14}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioEffect(IZ)I

    goto/16 :goto_0

    .line 447
    :cond_d
    invoke-virtual {v9}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isHeadsetConnected()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_4

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x6 -> :sswitch_5
        0x7 -> :sswitch_3
        0x9 -> :sswitch_8
        0xe -> :sswitch_6
        0xf -> :sswitch_4
        0x11 -> :sswitch_7
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 164
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 77
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 78
    .local v2, "resumeIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 79
    .local v1, "resumeComponent":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 85
    .local v0, "className":Ljava/lang/String;
    sput-object p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mCurrentAcitivity:Landroid/app/Activity;

    .line 86
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setMtvVisibiltySettings(Landroid/content/Context;)Z

    .line 88
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->releaseCPUPartialWakeLock()V

    .line 90
    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    const-string v3, "com.samsung.sec.mtv.ui.tvlink.MtvUiTvLinks"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    const-string v3, "MtvBaseActivity"

    const-string v4, "MtvUiTvLinks: Restricting the rotation to portrait only"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->requestOrientation(I)V

    .line 109
    :cond_0
    :goto_0
    const-string v3, "media_router"

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouter;

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mMediaRouter:Landroid/media/MediaRouter;

    .line 110
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->updatePresentation(Landroid/content/Context;Landroid/media/MediaRouter;)V

    .line 112
    return-void

    .line 101
    :cond_1
    const-string v3, "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    const-string v3, "MtvBaseActivity"

    const-string v4, "DTV Requesting for the Rotation...."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget v3, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->preferred_orientation:I

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->requestOrientation(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 168
    const-string v1, "MtvBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop() :: isFinishing ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "mMtvPreferences":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    invoke-static {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isMiniModeRunning(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsLivePlayMiniMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsFilePlayMiniMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->resetMtvVisibiltySettings(Landroid/content/Context;)Z

    .line 178
    :cond_0
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mCurrentAcitivity:Landroid/app/Activity;

    if-ne v1, p0, :cond_3

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mCurrentAcitivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mCurrentAcitivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 179
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->aquireCPUPartialWakeLock(Landroid/content/Context;)V

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mMediaRouter:Landroid/media/MediaRouter;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 187
    :cond_1
    sget-object v1, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mCurrentAcitivity:Landroid/app/Activity;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mCurrentAcitivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->isMobileTvNotOnTop(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 188
    sget-object v1, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->hide()V

    .line 189
    const-string v1, "MtvBaseActivity"

    const-string v2, "onStop() :: hiding Presentation dialog"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_2
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 199
    return-void

    .line 181
    :cond_3
    const-string v1, "MtvBaseActivity"

    const-string v2, "not acquiring wakelock due to current activity or state mismatch !"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_4
    sget-object v1, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mCurrentAcitivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mCurrentAcitivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->isMobileTvNotOnTop(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    const-string v1, "MtvBaseActivity"

    const-string v2, "onStop() :: DTV is not on top, let\'us dismiss Presentation class"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v1, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->dismiss()V

    .line 195
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    goto :goto_1
.end method

.method public prepareUri(IIZ)Landroid/broadcast/helper/MtvURI;
    .locals 6
    .param p1, "phyChannelNum"    # I
    .param p2, "serviceId"    # I
    .param p3, "oneseg"    # Z

    .prologue
    .line 552
    const/4 v2, 0x0

    .line 553
    .local v2, "mOpenURI":Landroid/broadcast/helper/MtvURI;
    const/4 v0, 0x0

    .line 554
    .local v0, "iMultiChannelNumber":I
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    .line 555
    .local v1, "mMtvPreferences":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    if-eqz p3, :cond_0

    .line 556
    new-instance v2, Landroid/broadcast/helper/MtvURI;

    .end local v2    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v4

    invoke-direct {v2, v3, v4, p2}, Landroid/broadcast/helper/MtvURI;-><init>(III)V

    .line 557
    .restart local v2    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    invoke-static {p0, p1, p2}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findMultiChannelNoByServiceId(Landroid/content/Context;II)I

    move-result v0

    .line 576
    :cond_0
    const-string v3, "MtvBaseActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareUri, iServiceID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iMultiChannelNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {v1, p2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 578
    invoke-virtual {v1, v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 579
    return-object v2
.end method

.method protected requestOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 153
    const-string v0, "MtvBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested Orientation in BaseActivity ["

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

    .line 154
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->setRequestedOrientation(I)V

    .line 155
    return-void
.end method

.method protected showLowBatteryPopup()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 466
    const-string v1, "MtvBaseActivity"

    const-string v2, "showLowBatteryPopup() ::"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isBatteryLowPopupAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getRotation(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 471
    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->setRequestedOrientation(I)V

    .line 477
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 478
    .local v0, "intentPopup":Landroid/content/Intent;
    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_POP_UP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const-string v1, "popup_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 482
    .end local v0    # "intentPopup":Landroid/content/Intent;
    :cond_0
    return-void

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getRotation(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 473
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 475
    :cond_2
    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected showLowMemoryPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 486
    const-string v1, "MtvBaseActivity"

    const-string v2, "showLowMemoryPopup() ::"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->isMemoryLowPopupAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getRotation(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 491
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->setRequestedOrientation(I)V

    .line 497
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 498
    .local v0, "intentPopup":Landroid/content/Intent;
    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_POP_UP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const-string v1, "popup_type"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 500
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 502
    .end local v0    # "intentPopup":Landroid/content/Intent;
    :cond_0
    return-void

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getRotation(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 493
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 495
    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
