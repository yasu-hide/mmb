.class public Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;
.super Ljava/lang/Object;
.source "MtvUtilSetReservationAlarm.java"


# static fields
.field public static final RESERVATION_ALARM_SET:Z = true

.field public static final RESERVATION_DELETE_DB:Z = true

.field public static final RESERVATION_REMINDER_PERIOD_SEC:I = 0x14

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "MtvUtilSetReservationAlarm"

    sput-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateSetReserveTime(JJ)I
    .locals 16
    .param p0, "streamTime"    # J
    .param p2, "programTime"    # J

    .prologue
    .line 119
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v9, "d"

    invoke-direct {v1, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "day":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v9, "H"

    invoke-direct {v4, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    .local v4, "hour":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v9, "mm"

    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 122
    .local v5, "minute":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v9, "ss"

    invoke-direct {v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 124
    .local v7, "second":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 125
    .local v0, "calendar":Ljava/util/Calendar;
    sub-long v12, p2, p0

    const/16 v9, 0xf

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-long v14, v9

    sub-long/2addr v12, v14

    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-long v14, v9

    sub-long v10, v12, v14

    .line 127
    .local v10, "sub":J
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 128
    .local v2, "dd":I
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 129
    .local v3, "hh":I
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 130
    .local v6, "mm":I
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 132
    .local v8, "ss":I
    const/16 v9, 0x8

    if-le v2, v9, :cond_0

    .line 133
    const/4 v2, 0x1

    .line 134
    :cond_0
    add-int/lit8 v9, v2, -0x1

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit8 v9, v9, 0x18

    mul-int/lit8 v12, v3, 0x3c

    mul-int/lit8 v12, v12, 0x3c

    add-int/2addr v9, v12

    mul-int/lit8 v12, v6, 0x3c

    add-int/2addr v9, v12

    add-int/2addr v9, v8

    return v9
.end method

.method public static setReservationAlarm(Landroid/content/Context;JZZ)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "programTime"    # J
    .param p3, "setAlarm"    # Z
    .param p4, "db_delete"    # Z

    .prologue
    .line 59
    sget-object v17, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->TAG:Ljava/lang/String;

    const-string v20, "setReservationAlarm"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 61
    .local v18, "streamTime":J
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v12

    .line 62
    .local v12, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-nez v12, :cond_1

    .line 64
    sget-object v17, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->TAG:Ljava/lang/String;

    const-string v20, "setReservationAlarm : invalid reservation request"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    move-wide/from16 v0, v18

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->calculateSetReserveTime(JJ)I

    move-result v4

    .line 68
    .local v4, "afterTime":I
    iget-wide v0, v12, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->calculateSetReserveTime(JJ)I

    move-result v9

    .line 69
    .local v9, "endAfterTime":I
    new-instance v16, Landroid/content/Intent;

    const-string v17, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_START"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v16, "reservationIntent":Landroid/content/Intent;
    new-instance v10, Landroid/content/Intent;

    const-string v17, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_REMINDER"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v10, "reminderIntent":Landroid/content/Intent;
    new-instance v15, Landroid/content/Intent;

    const-string v17, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_END"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v15, "reservationEndIntent":Landroid/content/Intent;
    iget v0, v12, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    move/from16 v17, v0

    const-string v20, "dbId"

    iget v0, v12, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v20

    const/high16 v21, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 75
    .local v13, "reservationAlarm":Landroid/app/PendingIntent;
    iget v0, v12, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    move/from16 v17, v0

    const-string v20, "dbId"

    iget v0, v12, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v20

    const/high16 v21, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 77
    .local v11, "reminderReminder":Landroid/app/PendingIntent;
    iget v0, v12, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    move/from16 v17, v0

    const-string v20, "dbId"

    iget v0, v12, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v20

    const/high16 v21, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 81
    .local v14, "reservationEndAlarm":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 82
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 83
    const/16 v17, 0xd

    add-int/lit8 v20, v4, -0x5

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 86
    .local v8, "calendarReminder":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 87
    const/16 v17, 0xd

    add-int/lit8 v20, v4, -0x14

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 90
    .local v7, "calendarEnd":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 91
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Ljava/util/Calendar;->add(II)V

    .line 93
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 95
    const-string v17, "alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 96
    .local v5, "am":Landroid/app/AlarmManager;
    const/16 v17, 0x0

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    move/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v5, v0, v1, v2, v13}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 97
    const/16 v17, 0x0

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    move/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v5, v0, v1, v2, v11}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 98
    const/16 v17, 0x0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    move/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v5, v0, v1, v2, v14}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 99
    sget-object v17, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->TAG:Ljava/lang/String;

    const-string v20, "setReservationAlarm : new alarm set "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    .end local v5    # "am":Landroid/app/AlarmManager;
    :cond_2
    const-string v17, "alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 103
    .restart local v5    # "am":Landroid/app/AlarmManager;
    invoke-virtual {v5, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 104
    invoke-virtual {v5, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 105
    invoke-virtual {v5, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 106
    if-eqz p4, :cond_0

    .line 107
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->delete(Landroid/content/Context;JLandroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method public static setReservationOnBoot(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v7, -0x1

    .line 29
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    .line 30
    .local v1, "pref":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v6

    if-eq v6, v7, :cond_0

    .line 31
    invoke-virtual {v1, v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservationAlertID(I)V

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->getAllReserves(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v3

    .line 33
    .local v3, "reservationList":[Lcom/samsung/sec/mtv/provider/MtvReservation;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 34
    .local v4, "streamTime":J
    if-eqz v3, :cond_1

    array-length v6, v3

    if-ge v6, v9, :cond_2

    .line 48
    :cond_1
    return-void

    .line 37
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 38
    aget-object v6, v3, v0

    iget-wide v6, v6, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_5

    .line 39
    aget-object v2, v3, v0

    .line 40
    .local v2, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    iget v6, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-eqz v6, :cond_3

    iget v6, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    .line 41
    :cond_3
    const/4 v6, 0x3

    invoke-static {p0, v2, v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 37
    .end local v2    # "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_5
    aget-object v6, v3, v0

    iget-wide v6, v6, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const/4 v8, 0x0

    invoke-static {p0, v6, v7, v9, v8}, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->setReservationAlarm(Landroid/content/Context;JZZ)V

    goto :goto_1
.end method
