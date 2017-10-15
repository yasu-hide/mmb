.class public Lcom/samsung/sec/mtv/utility/MtvUtilAppService;
.super Ljava/lang/Object;
.source "MtvUtilAppService.java"


# static fields
.field public static final MTV_ROTATION_LANDSCAPE:I = 0x1

.field public static final MTV_ROTATION_PORTRAIT:I = 0x0

.field public static final MTV_ROTATION_REVERSE_LANDSCAPE:I = 0x3

.field static final TAG:Ljava/lang/String; = "MtvUtilAppService"

.field public static bIsNowOnAirReservation:Z

.field private static isAppExiting:Z

.field private static isDialogTypeShowModeOn:Z

.field private static isSwitchModeOngoing:Z

.field private static mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field public static preferred_orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    sput-boolean v1, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting:Z

    .line 62
    sput-boolean v1, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isSwitchModeOngoing:Z

    .line 63
    sput-boolean v1, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isDialogTypeShowModeOn:Z

    .line 65
    const/4 v0, -0x1

    sput v0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->preferred_orientation:I

    .line 66
    sput-boolean v1, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->bIsNowOnAirReservation:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static Reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    sput-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isSwitchModeOngoing:Z

    .line 82
    sput-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->bIsNowOnAirReservation:Z

    .line 83
    return-void
.end method

.method public static ShowSwitchToast(Landroid/content/Context;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 440
    const-string v0, "MtvUtilAppService"

    const-string v1, "ShowSwitchToast called as Currently one mode switching is onGoing so can not call another mode switch"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public static aquireCPUPartialWakeLock(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    const-string v0, "MtvUtilAppService"

    const-string v1, "aquireCPUPartialWakeLock :: "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "MtvUtilAppService"

    const-string v1, "aquireCPUPartialWakeLock :: acquiring..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static forceresetMtvVisibiltySettings(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public static getCurrentOrientation(Landroid/content/Context;)I
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 89
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 91
    .local v0, "rotation":I
    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 92
    :cond_0
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    const-string v1, "MtvUtilAppService"

    const-string v3, "Lanscape..."

    invoke-static {v1, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v2

    .line 99
    :goto_0
    return v1

    .line 97
    :cond_2
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 98
    const-string v1, "MtvUtilAppService"

    const-string v2, "Portrait..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getIsNowOnAirReservation()Z
    .locals 3

    .prologue
    .line 454
    const-string v0, "MtvUtilAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNowOnAirReservation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->bIsNowOnAirReservation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    sget-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->bIsNowOnAirReservation:Z

    return v0
.end method

.method public static getRotation(Landroid/content/Context;)I
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 106
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public static isActivityOnForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 298
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 299
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "className":Ljava/lang/String;
    const-string v2, "MtvUtilAppService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAppOnForeground() : topActivityName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 306
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method public static isActivityPresent()Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public static isAllowedBy3LMPolicy()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 348
    const-string v3, "MtvUtilAppService"

    const-string v4, "isAllowedBy3LMPolicy"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->is3LMEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    :try_start_0
    const-string v3, "OemExtendedApi3LM"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IOemExtendedApi3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOemExtendedApi3LM;

    move-result-object v1

    .line 353
    .local v1, "oem3lm":Landroid/os/IOemExtendedApi3LM;
    if-eqz v1, :cond_0

    .line 355
    invoke-interface {v1}, Landroid/os/IOemExtendedApi3LM;->getOneSegState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v2

    .line 358
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MtvUtilAppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsAllowedBy3LMPolicy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isAppExiting()Z
    .locals 1

    .prologue
    .line 276
    sget-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting:Z

    return v0
.end method

.method public static isAppOnForeground(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 282
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context cannot be null !"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_0
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 285
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    const-string v2, "MtvUtilAppService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAppOnForeground() : topPackageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 293
    :goto_0
    return v2

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public static isBGRecorderRunning()Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 418
    .local v0, "isBGRecorderRunning":Z
    return v0
.end method

.method public static isConflictHandlerEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "bRetVal":Z
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isConflicttHandlerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const-string v1, "com.nttdocomo.mmb.android.mmbsv.process"

    invoke-static {p0, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 469
    :cond_0
    const-string v1, "MtvUtilAppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMB Package installation check : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return v0
.end method

.method public static isDialogTypeShowModeOn()Z
    .locals 3

    .prologue
    .line 444
    const-string v0, "MtvUtilAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDialogTypeShowModeOn   :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isDialogTypeShowModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isDialogTypeShowModeOn:Z

    return v0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 251
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 254
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMiniModeRunning(Landroid/content/Context;)Z
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 373
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 374
    .local v1, "manager":Landroid/app/ActivityManager;
    if-eqz v1, :cond_1

    .line 375
    const v4, 0x7fffffff

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 376
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v3, :cond_1

    .line 377
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 379
    .local v2, "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.sec.mtv.ui.minitv.MtvMiniModeService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 381
    const/4 v4, 0x1

    .line 386
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v3    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "mContex"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 475
    if-nez p0, :cond_0

    .line 476
    const-string v3, "MtvUtilAppService"

    const-string v4, "context is null! Please set context when create instance"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :goto_0
    return v2

    .line 479
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 480
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_1

    .line 481
    const-string v3, "MtvUtilAppService"

    const-string v4, "pm is null!"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 486
    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public static isSwitchModeOngoing()Z
    .locals 3

    .prologue
    .line 422
    const-string v0, "MtvUtilAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSwitchModeOngoing   :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isSwitchModeOngoing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isSwitchModeOngoing:Z

    return v0
.end method

.method public static isTaskPresent()Z
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public static mobileTvAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "mContex"    # Landroid/content/Context;

    .prologue
    .line 519
    const-string v4, ""

    .line 520
    .local v4, "verName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 521
    .local v3, "verCode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "retVal":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v2, v1

    .line 541
    .end local v1    # "retVal":Ljava/lang/String;
    .local v2, "retVal":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 526
    .end local v2    # "retVal":Ljava/lang/String;
    .restart local v1    # "retVal":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v3, v5, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 540
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 541
    .end local v1    # "retVal":Ljava/lang/String;
    .restart local v2    # "retVal":Ljava/lang/String;
    goto :goto_0

    .line 528
    .end local v2    # "retVal":Ljava/lang/String;
    .restart local v1    # "retVal":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 536
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 538
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public static releaseAndDeletePartialWakeLock()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "MtvUtilAppService"

    const-string v1, "releaseAndDeletePartialWakeLock :: "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "MtvUtilAppService"

    const-string v1, "releaseAndDeletePartialWakeLock :: releasing..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 220
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 221
    return-void
.end method

.method public static releaseCPUPartialWakeLock()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "MtvUtilAppService"

    const-string v1, "releaseCPUPartialWakeLock :: "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static resetMtvVisibiltySettings(Landroid/content/Context;)Z
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 117
    const-string v1, "com.samsung.sec.mtv"

    .line 118
    .local v1, "classpkgName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 119
    .local v2, "topActivityName":Ljava/lang/String;
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 120
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 122
    :cond_0
    if-eqz v2, :cond_2

    .line 123
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    const-string v3, "MtvUtilAppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetMtvVisibiltySettings() :topActivityName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_1
    const-string v3, "com.samsung.sec.mtv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 126
    const-string v3, "MtvUtilAppService"

    const-string v5, "resetMtvVisibiltySettings: Not Top Activity.. resetting "

    invoke-static {v3, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 132
    :goto_0
    return v3

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method public static setAppExiting(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 265
    sput-boolean p0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting:Z

    .line 266
    return-void
.end method

.method public static setBroadcastAlarmDelayed(Landroid/content/Context;Landroid/app/PendingIntent;IJ)Z
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mPendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "type"    # I
    .param p3, "timeout"    # J

    .prologue
    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, "isSetAlarmSuccess":Z
    if-eqz p0, :cond_0

    if-ltz p2, :cond_0

    const/4 v4, 0x3

    if-gt p2, v4, :cond_0

    .line 395
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 396
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 399
    .local v2, "currTime":J
    add-long v4, v2, p3

    invoke-virtual {v0, p2, v4, v5, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 400
    const-string v4, "MtvUtilAppService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBroadcastAlarmDelayed after : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v1, 0x1

    .line 404
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v2    # "currTime":J
    :cond_0
    return v1
.end method

.method public static setDialogTypeShowModeOn(Z)V
    .locals 3
    .param p0, "flag"    # Z

    .prologue
    .line 449
    const-string v0, "MtvUtilAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialogTypeShowModeOn setting to   :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    sput-boolean p0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isDialogTypeShowModeOn:Z

    .line 451
    return-void
.end method

.method public static setIsNowOnAirReservation(Z)V
    .locals 3
    .param p0, "flag"    # Z

    .prologue
    .line 459
    const-string v0, "MtvUtilAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsNowOnAirReservation setting to   :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sput-boolean p0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->bIsNowOnAirReservation:Z

    .line 461
    return-void
.end method

.method public static setMtvVisibiltySettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 156
    const-string v0, "MtvUtilAppService"

    const-string v1, "setMtvVisibiltySettings()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public static setPreferredOrientation(I)V
    .locals 3
    .param p0, "orientation"    # I

    .prologue
    .line 73
    const-string v0, "MtvUtilAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferredOrientation for DTV: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sput p0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->preferred_orientation:I

    .line 75
    return-void
.end method

.method public static unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 233
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 236
    :cond_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p0

    .line 238
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->unbindDrawables(Landroid/view/View;)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 242
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public static updateBatteryInfo(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 311
    if-nez p0, :cond_0

    .line 313
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "context cannot be null !"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 315
    :cond_0
    const/4 v2, 0x0

    .line 316
    .local v2, "isBatteryLow":Z
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 317
    .local v1, "ifilter":Landroid/content/IntentFilter;
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 318
    .local v0, "batteryStatus":Landroid/content/Intent;
    if-eqz v0, :cond_4

    .line 320
    const-string v6, "status"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 322
    .local v3, "isCharging":Z
    :goto_0
    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->setBatteryCharging(Z)V

    .line 324
    const-string v6, "scale"

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 325
    .local v5, "scale":I
    const-string v6, "level"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 326
    .local v4, "level":I
    invoke-static {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->updateBatteryLevel(II)V

    .line 327
    const/16 v6, 0xf

    if-gt v4, v6, :cond_1

    if-nez v3, :cond_1

    .line 329
    const/4 v2, 0x1

    .line 331
    :cond_1
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 332
    const-string v6, "MtvUtilAppService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateBatteryInfo() ::  level "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "isCharging "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v3    # "isCharging":Z
    .end local v4    # "level":I
    .end local v5    # "scale":I
    :cond_2
    :goto_1
    const-string v6, "MtvUtilAppService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateBatteryInfo() :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return v2

    .line 320
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 336
    :cond_4
    const-string v6, "MtvUtilAppService"

    const-string v7, "battery_change_intent not broadcasted not able to update :("

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
