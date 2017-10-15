.class public Lcom/samsung/sec/mtv/provider/MtvReservationManager;
.super Ljava/lang/Object;
.source "MtvReservationManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/samsung/sec/mtv/provider/IMtvProgramManager;


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.curosr.item/vnd.android.mtv.reservation"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.android.mtv.reservation"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final IMMIDEATE_RESERVATION_CHECK_TIME:I = 0x2710

.field public static final PROJECTION:[Ljava/lang/String;

.field protected static PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TABLE:Ljava/lang/String; = "reservations"

.field private static final TAG:Ljava/lang/String; = "MtvReservationManager"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-string v0, "content://com.samsung.sec.mtv/reservations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    .line 24
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "epg_pch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "epg_vch"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "epg_plock"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "epg_stime"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "epg_etime"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "epg_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "epg_detail"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "egp_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "egp_status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "egp_serviceid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION:[Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION_MAP:Ljava/util/HashMap;

    .line 41
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "epg_pch"

    const-string v2, "epg_pch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "epg_vch"

    const-string v2, "epg_vch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "epg_plock"

    const-string v2, "epg_plock"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "epg_stime"

    const-string v2, "epg_stime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "epg_etime"

    const-string v2, "epg_etime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "epg_name"

    const-string v2, "epg_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "epg_detail"

    const-string v2, "epg_detail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "egp_type"

    const-string v2, "egp_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "egp_status"

    const-string v2, "egp_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "egp_serviceid"

    const-string v2, "egp_serviceid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservation"    # Lcom/samsung/sec/mtv/provider/MtvReservation;
    .param p2, "newStatus"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 407
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    const/16 v2, 0xc

    if-le p2, v2, :cond_2

    .line 409
    :cond_0
    const-string v2, "MtvReservationManager"

    const-string v3, "invalid newStatuspassed or Reservation null value passed !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_1
    :goto_0
    return-void

    .line 412
    :cond_2
    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    .line 413
    .local v1, "reserve_id":I
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    .line 414
    .local v0, "pref":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    iput p2, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    .line 415
    iput v6, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    .line 416
    invoke-static {p0, p1}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->updateOrInsert(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    .line 417
    const/4 v2, 0x6

    if-ne p2, v2, :cond_3

    .line 418
    const-string v2, "MtvReservationManager"

    const-string v3, "UpdateStatus():: reservation started"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservationAlertID(I)V

    .line 421
    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    goto :goto_0

    .line 423
    :cond_3
    if-ne p2, v4, :cond_4

    .line 424
    const-string v2, "MtvReservationManager"

    const-string v3, "UpdateStatus():: reservation success"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-wide v2, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-static {p0, v2, v3, v5, v5}, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->setReservationAlarm(Landroid/content/Context;JZZ)V

    .line 427
    invoke-virtual {v0, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservationAlertID(I)V

    .line 428
    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    goto :goto_0

    .line 430
    :cond_4
    if-nez p2, :cond_5

    .line 432
    const-string v2, "MtvReservationManager"

    const-string v3, "UpdateStatus : STATUS_NONE"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_5
    const-string v2, "MtvReservationManager"

    const-string v3, "UpdateStatus():: reservation failure"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v2, 0x7

    if-eq p2, v2, :cond_6

    .line 440
    const-string v2, "MtvReservationManager"

    const-string v3, "newStatus != STATUS_CANCELLED"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_6
    iget-wide v2, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-static {p0, v2, v3, v5, v5}, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->setReservationAlarm(Landroid/content/Context;JZZ)V

    .line 443
    const-string v2, "MtvReservationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpdateStatus():: pref.getReservationAlertID() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reserve_id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 445
    invoke-virtual {v0, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setReservationAlertID(I)V

    .line 446
    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsReservationProgram(Z)V

    goto/16 :goto_0
.end method

.method public static builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvReservation;
    .locals 14
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 86
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvReservation;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x5

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x6

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v11, 0x9

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v12, 0xa

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-direct/range {v0 .. v13}, Lcom/samsung/sec/mtv/provider/MtvReservation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public static contains(Landroid/content/Context;J)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startTime"    # J

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 138
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "count"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 139
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "epg_stime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 141
    .local v6, "count":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 142
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 143
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 145
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 147
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_1
    if-lez v6, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v8

    goto :goto_0
.end method

.method public static delete(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriId"    # J

    .prologue
    const/4 v2, 0x0

    .line 313
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 314
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method public static delete(Landroid/content/Context;JLandroid/net/Uri;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nStart"    # J
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "epg_stime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    return-void
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 318
    if-nez p1, :cond_0

    .line 319
    sget-object p1, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    .line 320
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method public static find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "_id"    # I

    .prologue
    const/4 v4, 0x0

    .line 235
    if-gez p1, :cond_0

    .line 250
    :goto_0
    return-object v4

    .line 237
    :cond_0
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    .line 238
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION:[Ljava/lang/String;

    .line 239
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "where":Ljava/lang/String;
    const/4 v7, 0x0

    .line 242
    .local v7, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 246
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v7

    .line 248
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v4, v7

    .line 250
    goto :goto_0
.end method

.method public static varargs find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "isEndTimePassed"    # [Z

    .prologue
    const/4 v4, 0x0

    .line 163
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    .line 164
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION:[Ljava/lang/String;

    .line 165
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 167
    .local v3, "selection":Ljava/lang/String;
    if-eqz p3, :cond_2

    array-length v0, p3

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-boolean v0, p3, v0

    if-eqz v0, :cond_2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "epg_etime="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    :goto_0
    const/4 v7, 0x0

    .line 173
    .local v7, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 174
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 177
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v7

    .line 179
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_1
    return-object v7

    .line 170
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "epg_stime="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static find(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/sec/mtv/provider/MtvReservation;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 215
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION:[Ljava/lang/String;

    .line 216
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 217
    .local v7, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 218
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 219
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 221
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v7

    .line 223
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_1
    return-object v7
.end method

.method public static find(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/sec/mtv/provider/MtvReservation;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pgmName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 193
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION:[Ljava/lang/String;

    .line 194
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    .line 195
    .local v1, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 196
    .local v7, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "epg_name="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 198
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 199
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 200
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 201
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v7

    .line 203
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_1
    return-object v7
.end method

.method public static findAll(Landroid/content/Context;I)[Lcom/samsung/sec/mtv/provider/MtvReservation;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nPhyCh"    # I

    .prologue
    const/4 v4, 0x0

    .line 260
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    .line 261
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION:[Ljava/lang/String;

    .line 262
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "epg_pch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "where":Ljava/lang/String;
    const/4 v9, 0x0

    .line 264
    .local v9, "reservation":[Lcom/samsung/sec/mtv/provider/MtvReservation;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 265
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 266
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 268
    .local v8, "nTotalCnt":I
    if-lez v8, :cond_0

    .line 269
    new-array v9, v8, [Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 270
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 271
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 272
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    aput-object v0, v9, v7

    .line 271
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 275
    .end local v7    # "i":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 277
    .end local v8    # "nTotalCnt":I
    :cond_1
    return-object v9
.end method

.method public static getAllReserves(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvReservation;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 336
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 337
    .local v8, "reserves":[Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v6, :cond_1

    .line 338
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 339
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 340
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 341
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    aput-object v0, v8, v7

    .line 342
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 340
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 344
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 346
    .end local v7    # "i":I
    :cond_1
    return-object v8
.end method

.method protected static getContentValues(Lcom/samsung/sec/mtv/provider/MtvReservation;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "reserv"    # Lcom/samsung/sec/mtv/provider/MtvReservation;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, -0x1

    .line 57
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v0, "values":Landroid/content/ContentValues;
    if-nez p0, :cond_1

    .line 59
    const-string v1, "MtvReservationManager"

    const-string v2, "getContentValues : MtvArea is NULL"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    if-eq v1, v4, :cond_2

    .line 62
    const-string v1, "epg_pch"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    :cond_2
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    if-eq v1, v4, :cond_3

    .line 64
    const-string v1, "epg_vch"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    :cond_3
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mLock:I

    if-eq v1, v4, :cond_4

    .line 66
    const-string v1, "epg_plock"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mLock:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    :cond_4
    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_5

    .line 68
    const-string v1, "epg_stime"

    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    :cond_5
    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_6

    .line 70
    const-string v1, "epg_etime"

    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    :cond_6
    iget-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 72
    const-string v1, "epg_name"

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_7
    iget-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmDetail:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 74
    const-string v1, "epg_detail"

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmDetail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_8
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-eq v1, v4, :cond_9

    .line 76
    const-string v1, "egp_type"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    :cond_9
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-eq v1, v4, :cond_a

    .line 78
    const-string v1, "egp_status"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    :cond_a
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-eq v1, v4, :cond_0

    .line 80
    const-string v1, "egp_serviceid"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method

.method public static getCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-static {p0, v0, v0}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 114
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "count"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 115
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 116
    .local v6, "count":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 117
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 118
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 119
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 122
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_1
    return v6
.end method

.method public static getCurrentReservation(Landroid/content/Context;IJ)Lcom/samsung/sec/mtv/provider/MtvReservation;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nPhyCh"    # I
    .param p2, "streamTime"    # J

    .prologue
    const/4 v4, 0x0

    .line 357
    if-gez p1, :cond_0

    .line 373
    :goto_0
    return-object v4

    .line 359
    :cond_0
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    .line 360
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION:[Ljava/lang/String;

    .line 361
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "epg_pch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND epg_stime<="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND epg_etime>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 364
    const/4 v7, 0x0

    .line 365
    .local v7, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 366
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 368
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 369
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v7

    .line 371
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v4, v7

    .line 373
    goto :goto_0
.end method

.method public static getCurrentReservations(Landroid/content/Context;J)[Lcom/samsung/sec/mtv/provider/MtvReservation;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "streamTime"    # J

    .prologue
    const/4 v2, 0x0

    .line 383
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 399
    :goto_0
    return-object v2

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "epg_stime<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND epg_etime>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 389
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 390
    .local v8, "reserves":[Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v6, :cond_2

    .line 391
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 393
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 394
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    aput-object v0, v8, v7

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 393
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 397
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7    # "i":I
    :cond_2
    move-object v2, v8

    .line 399
    goto :goto_0
.end method

.method public static getImmediateReservation(Landroid/content/Context;J)Lcom/samsung/sec/mtv/provider/MtvReservation;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mTimeEnd"    # J

    .prologue
    const/4 v2, 0x0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "epg_stime>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, "selection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 477
    .local v7, "reserves":Lcom/samsung/sec/mtv/provider/MtvReservation;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND epg_stime<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v4, 0x2710

    add-long/2addr v4, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 479
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 481
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 482
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v7

    .line 483
    const-string v0, "MtvReservationManager"

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/provider/MtvReservation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v7

    .line 489
    :cond_0
    :goto_0
    return-object v2

    .line 487
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getUri(I)Landroid/net/Uri;
    .locals 4
    .param p0, "UriID"    # I

    .prologue
    .line 105
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 106
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImmediateReservation(Landroid/content/Context;J)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mTimeEnd"    # J

    .prologue
    const/4 v2, 0x0

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "epg_stime>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "selection":Ljava/lang/String;
    const/4 v8, 0x0

    .line 454
    .local v8, "reserves":[Lcom/samsung/sec/mtv/provider/MtvReservation;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND epg_stime<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v4, 0x2710

    add-long/2addr v4, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 456
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 459
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 460
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 461
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    aput-object v0, v8, v7

    .line 462
    const-string v0, "MtvReservationManager"

    aget-object v1, v8, v7

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvReservation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 460
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 466
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 467
    const/4 v0, 0x1

    .line 471
    .end local v7    # "i":I
    :goto_1
    return v0

    .line 469
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 471
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static update(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "program"    # Lcom/samsung/sec/mtv/provider/MtvReservation;
    .param p2, "_id"    # I

    .prologue
    const/4 v6, 0x0

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, p2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 302
    .local v0, "old":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->getUri(I)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 303
    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->getUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 305
    :cond_0
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    .line 306
    const-string v3, "MtvReservationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update: update reserve uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_1
    invoke-static {p1}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvReservation;)Landroid/content/ContentValues;

    move-result-object v2

    .line 309
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public static updateOrInsert(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "program"    # Lcom/samsung/sec/mtv/provider/MtvReservation;

    .prologue
    const/4 v6, 0x0

    .line 281
    iget v3, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->getUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 282
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 283
    iget-wide v4, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const/4 v3, 0x0

    new-array v3, v3, [Z

    invoke-static {p0, v4, v5, v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 284
    .local v0, "old":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v0, :cond_0

    .line 285
    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->getUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 287
    .end local v0    # "old":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_0
    if-nez v1, :cond_1

    .line 288
    const-string v3, "MtvReservationManager"

    const-string v4, "update: insert reserve"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {p1}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvReservation;)Landroid/content/ContentValues;

    move-result-object v2

    .line 290
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 297
    :goto_0
    return-void

    .line 292
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 293
    const-string v3, "MtvReservationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update: update reserve uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_2
    invoke-static {p1}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvReservation;)Landroid/content/ContentValues;

    move-result-object v2

    .line 295
    .restart local v2    # "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
