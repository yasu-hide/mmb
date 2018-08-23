.class Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;
.super Ljava/lang/Object;
.source "MmbTmTimerControlSv.java"


# static fields
.field private static final ACTION_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->ACTION_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 318
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v1, -0x3e9

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    return-void
.end method

.method private checkIndex(I)V
    .locals 3
    .param p1, "aIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 344
    if-gtz p1, :cond_0

    .line 346
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v1, -0x3e9

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    return-void
.end method

.method private checkMainService(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 3
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 402
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v1, -0x3e9

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    return-void
.end method

.method private checkTime(J)V
    .locals 3
    .param p1, "aTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 372
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 374
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v1, -0x3e9

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    return-void
.end method


# virtual methods
.method deleteAlarmTimer(Landroid/content/Context;I)V
    .locals 5
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->checkContext(Landroid/content/Context;)V

    .line 233
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->checkIndex(I)V

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "pacagename":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.nttdocomo.mmb.android.mmbsv.process.MmbFwBroadcastReceiverSv"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->ACTION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const/high16 v4, 0x8000000

    invoke-static {p1, p2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 244
    .local v3, "sender":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 245
    .local v1, "manager":Landroid/app/AlarmManager;
    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 250
    return-void
.end method

.method setAlarmTimer(Landroid/content/Context;JIILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 18
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aTime"    # J
    .param p4, "aType"    # I
    .param p5, "aIndex"    # I
    .param p6, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->deleteAlarmTimer(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->checkContext(Landroid/content/Context;)V

    .line 86
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->checkTime(J)V

    .line 87
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->checkIndex(I)V

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->checkMainService(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 92
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getDeltatime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v14

    sub-long v4, p2, v14

    .line 93
    .local v4, "alarmtime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 94
    .local v10, "nowtime":J
    cmp-long v13, v10, v4

    if-lez v13, :cond_0

    .line 95
    move-wide v4, v10

    .line 98
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "pacagename":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v7, "intent":Landroid/content/Intent;
    const-string v13, "com.nttdocomo.mmb.android.mmbsv.process.MmbFwBroadcastReceiverSv"

    invoke-virtual {v7, v9, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    sget-object v13, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->ACTION_NAME:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v13, "_id"

    move/from16 v0, p5

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const-string v13, "ALARMTIME"

    invoke-virtual {v7, v13, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 104
    const-string v13, "scheduleType"

    move/from16 v0, p4

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const/high16 v13, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1, v7, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 109
    .local v12, "sender":Landroid/app/PendingIntent;
    const-string v13, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 110
    .local v8, "manager":Landroid/app/AlarmManager;
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v4, v5, v12}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 122
    return-void

    .line 78
    .end local v4    # "alarmtime":J
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "manager":Landroid/app/AlarmManager;
    .end local v9    # "pacagename":Ljava/lang/String;
    .end local v10    # "nowtime":J
    .end local v12    # "sender":Landroid/app/PendingIntent;
    :catch_0
    move-exception v6

    .line 79
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    const-string v13, "An Exception has occurred! code[%d] message[%s]"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;->getErrorCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v6, v14, v15

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v14, -0x3e9

    const-string v15, "Illegal parameter"

    invoke-direct {v13, v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v13
.end method
