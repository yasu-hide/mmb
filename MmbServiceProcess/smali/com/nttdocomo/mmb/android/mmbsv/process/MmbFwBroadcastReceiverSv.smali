.class public Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwBroadcastReceiverSv;
.super Landroid/content/BroadcastReceiver;
.source "MmbFwBroadcastReceiverSv.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getWakeupTime(I)J
    .locals 4
    .param p1, "aScheduleType"    # I

    .prologue
    .line 164
    const-wide/32 v0, 0x927c0

    .line 166
    .local v0, "result":J
    sparse-switch p1, :sswitch_data_0

    .line 205
    const-string v2, "call Extra ScheduleType unknown"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :goto_0
    return-wide v0

    .line 173
    :sswitch_0
    const-wide/32 v0, 0x1d4c0

    .line 174
    goto :goto_0

    .line 178
    :sswitch_1
    const-wide/32 v0, 0x1d4c0

    .line 179
    goto :goto_0

    .line 201
    :sswitch_2
    const-wide/32 v0, 0x927c0

    .line 202
    goto :goto_0

    .line 166
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x4 -> :sswitch_0
        0x8 -> :sswitch_2
        0x10 -> :sswitch_0
        0x20 -> :sswitch_2
        0x40 -> :sswitch_2
        0x80 -> :sswitch_2
        0x100 -> :sswitch_2
        0x200 -> :sswitch_2
        0x400 -> :sswitch_2
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method private wakeupDevice(Landroid/content/Intent;)V
    .locals 8
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 119
    const-string v5, "scheduleType"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 120
    .local v2, "recordtype":I
    const-string v5, "_id"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 122
    .local v1, "id":I
    const/4 v0, 0x0

    .line 123
    .local v0, "checktype":I
    or-int/lit8 v0, v0, 0x4

    .line 124
    or-int/lit8 v0, v0, 0x10

    .line 125
    or-int/lit16 v0, v0, 0x2000

    .line 126
    or-int/lit16 v0, v0, 0x1000

    .line 128
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    .line 129
    .local v3, "service":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    move-result-object v4

    .line 132
    .local v4, "sleepcontrol":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
    and-int/lit16 v5, v2, 0x3014

    if-eqz v5, :cond_0

    .line 134
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwBroadcastReceiverSv;->getWakeupTime(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->wakeupDevice(J)V

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwBroadcastReceiverSv;->getWakeupTime(I)J

    move-result-wide v6

    invoke-virtual {v4, v1, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->wakeupDevice(IJ)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 64
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    const-string v4, "action[%s] executeSchedule RowID[%d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v9

    const/4 v6, 0x1

    const-string v7, "_id"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :try_start_0
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwBroadcastReceiverSv;->wakeupDevice(Landroid/content/Intent;)V

    .line 73
    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "failed to wakeup device"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    .line 82
    .local v3, "mainService":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getInitializedFlag()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const/4 v4, 0x0

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v1, v0, v4, p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v1, "chainintent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.nttdocomo.android.portablesim.action.PSIM_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 89
    :cond_4
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 91
    :cond_5
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
