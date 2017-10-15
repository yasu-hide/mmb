.class public Lcom/samsung/sec/mtv/provider/MtvProvider;
.super Landroid/content/ContentProvider;
.source "MtvProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/provider/MtvProvider$UpdateOldDBDBRunnable;,
        Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field protected static final AREA_COUNT:I = 0xa

.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.sec.mtv"

.field public static final DB_TEST_ENABLE:Z = false

.field private static final MTV_AREAS:I = 0xa

.field private static final MTV_AREA_COUNT:I = 0xb

.field private static final MTV_CHANNELS:I = 0x1

.field private static final MTV_CHANNEL_COUNT:I = 0x3

.field private static final MTV_CHANNEL_ID:I = 0x2

.field private static final MTV_PROGRAMS:I = 0x4

.field private static final MTV_PROGRAM_COUNT:I = 0x6

.field private static final MTV_PROGRAM_ID:I = 0x5

.field private static final MTV_RESERVATIONS:I = 0x7

.field private static final MTV_RESERVATION_COUNT:I = 0x9

.field private static final MTV_RESERVATION_ID:I = 0x8

.field private static final TAG:Ljava/lang/String; = "MtvProvider"

.field private static mContext:Landroid/content/Context;

.field private static final mUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mContext:Landroid/content/Context;

    .line 248
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 249
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.sec.mtv"

    const-string v2, "areas"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.sec.mtv"

    const-string v2, "areas/count"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.sec.mtv"

    const-string v2, "channels"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.sec.mtv"

    const-string v2, "channels/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.sec.mtv"

    const-string v2, "channels/count"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 254
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.sec.mtv"

    const-string v2, "programs"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.sec.mtv"

    const-string v2, "programs/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.sec.mtv"

    const-string v2, "programs/count"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 257
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.sec.mtv"

    const-string v2, "reservations"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.sec.mtv"

    const-string v2, "reservations/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 259
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.sec.mtv"

    const-string v2, "reservations/count"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 260
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mOpenHelper:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    .line 590
    return-void
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 27
    sput-object p0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private insert_area(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    .line 496
    if-eqz p2, :cond_0

    .line 497
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 502
    .local v4, "values":Landroid/content/ContentValues;
    :goto_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mOpenHelper:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 503
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "areas"

    invoke-virtual {v0, v5, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 504
    .local v2, "rowId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 505
    sget-object v5, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 506
    .local v1, "noteUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 507
    return-object v1

    .line 499
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "noteUri":Landroid/net/Uri;
    .end local v2    # "rowId":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .restart local v4    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 509
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "rowId":J
    :cond_1
    new-instance v5, Landroid/database/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to insert row into "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private insert_channel(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    .line 514
    if-eqz p2, :cond_0

    .line 515
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 520
    .local v4, "values":Landroid/content/ContentValues;
    :goto_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mOpenHelper:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 521
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "channels"

    invoke-virtual {v0, v5, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 522
    .local v2, "rowId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 523
    sget-object v5, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 524
    .local v1, "noteUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 525
    return-object v1

    .line 517
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "noteUri":Landroid/net/Uri;
    .end local v2    # "rowId":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .restart local v4    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 527
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "rowId":J
    :cond_1
    new-instance v5, Landroid/database/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to insert row into "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private insert_program(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    .line 532
    if-eqz p2, :cond_0

    .line 533
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 538
    .local v4, "values":Landroid/content/ContentValues;
    :goto_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mOpenHelper:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 539
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "programs"

    invoke-virtual {v0, v5, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 540
    .local v2, "rowId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 541
    sget-object v5, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 542
    .local v1, "noteUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 543
    return-object v1

    .line 535
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "noteUri":Landroid/net/Uri;
    .end local v2    # "rowId":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .restart local v4    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 545
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "rowId":J
    :cond_1
    new-instance v5, Landroid/database/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to insert row into "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private insert_reservation(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    .line 550
    if-eqz p2, :cond_0

    .line 551
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 556
    .local v4, "values":Landroid/content/ContentValues;
    :goto_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mOpenHelper:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 557
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "reservations"

    invoke-virtual {v0, v5, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 558
    .local v2, "rowId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 559
    sget-object v5, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 560
    .local v1, "noteUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 561
    return-object v1

    .line 553
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "noteUri":Landroid/net/Uri;
    .end local v2    # "rowId":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .restart local v4    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 563
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "rowId":J
    :cond_1
    new-instance v5, Landroid/database/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to insert row into "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static setReservations()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 569
    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->getAllReserves(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v1

    check-cast v1, [Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 571
    .local v1, "reserve":[Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-nez v1, :cond_0

    .line 586
    :goto_0
    return v2

    .line 574
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 576
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 578
    aget-object v4, v1, v0

    iget-wide v4, v4, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 581
    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aget-object v5, v1, v0

    iget-wide v6, v5, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-static {v4, v6, v7, v3, v2}, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->setReservationAlarm(Landroid/content/Context;JZZ)V

    .line 576
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 586
    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/16 v6, 0x29

    const/4 v5, 0x1

    .line 397
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    const-string v2, "MtvProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mOpenHelper:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 402
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 428
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :pswitch_1
    const/4 v0, 0x0

    .line 430
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 431
    return v0

    .line 407
    .end local v0    # "count":I
    :pswitch_2
    const-string v2, "channels"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 408
    .restart local v0    # "count":I
    goto :goto_0

    .line 410
    .end local v0    # "count":I
    :pswitch_3
    const-string v3, "channels"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 412
    .restart local v0    # "count":I
    goto :goto_0

    .line 410
    .end local v0    # "count":I
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 414
    :pswitch_4
    const-string v2, "programs"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 415
    .restart local v0    # "count":I
    goto :goto_0

    .line 417
    .end local v0    # "count":I
    :pswitch_5
    const-string v3, "programs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 419
    .restart local v0    # "count":I
    goto/16 :goto_0

    .line 417
    .end local v0    # "count":I
    :cond_2
    const-string v2, ""

    goto :goto_2

    .line 421
    :pswitch_6
    const-string v2, "reservations"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 422
    .restart local v0    # "count":I
    goto/16 :goto_0

    .line 424
    .end local v0    # "count":I
    :pswitch_7
    const-string v3, "reservations"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 426
    .restart local v0    # "count":I
    goto/16 :goto_0

    .line 424
    .end local v0    # "count":I
    :cond_3
    const-string v2, ""

    goto :goto_3

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 272
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const-string v0, "MtvProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 291
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/vnd.android.mtv.area"

    .line 289
    :goto_0
    return-object v0

    .line 279
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.android.mtv.channel"

    goto :goto_0

    .line 281
    :pswitch_3
    const-string v0, "vnd.android.curosr.item/vnd.android.mtv.channel"

    goto :goto_0

    .line 283
    :pswitch_4
    const-string v0, "vnd.android.cursor.dir/vnd.android.mtv.program"

    goto :goto_0

    .line 285
    :pswitch_5
    const-string v0, "vnd.android.curosr.item/vnd.android.mtv.program"

    goto :goto_0

    .line 287
    :pswitch_6
    const-string v0, "vnd.android.cursor.dir/vnd.android.mtv.reservation"

    goto :goto_0

    .line 289
    :pswitch_7
    const-string v0, "vnd.android.curosr.item/vnd.android.mtv.reservation"

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 437
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    const-string v0, "MtvProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/sec/mtv/provider/MtvProvider;->insert_area(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 448
    :goto_0
    return-object v0

    .line 444
    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/sec/mtv/provider/MtvProvider;->insert_channel(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 446
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/sec/mtv/provider/MtvProvider;->insert_program(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 448
    :sswitch_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/sec/mtv/provider/MtvProvider;->insert_reservation(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 440
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x7 -> :sswitch_3
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 264
    const-string v0, "MtvProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mOpenHelper:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    const-string v2, "MtvProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " where: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 302
    .local v0, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 304
    .local v9, "matchedUri":I
    packed-switch v9, :pswitch_data_0

    .line 385
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    :pswitch_0
    const-string v2, "areas"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 307
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 308
    if-nez p2, :cond_1

    sget-object p2, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->PROJECTION:[Ljava/lang/String;

    .line 309
    :cond_1
    if-nez p5, :cond_2

    const-string p5, "_id ASC"

    .line 387
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mOpenHelper:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 388
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 389
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 390
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 391
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_1
    return-object v8

    .line 313
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mOpenHelper:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 314
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v10, "SELECT count(*) FROM areas"

    .line 315
    .local v10, "sql":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 318
    :cond_4
    invoke-virtual {v1, v10, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 321
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "sql":Ljava/lang/String;
    :pswitch_2
    const-string v2, "channels"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 322
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 323
    if-nez p2, :cond_5

    sget-object p2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 324
    :cond_5
    if-nez p5, :cond_2

    const-string p5, "ch_vch ASC"

    goto :goto_0

    .line 327
    :pswitch_3
    const-string v2, "channels"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 328
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 330
    if-nez p2, :cond_2

    sget-object p2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    goto/16 :goto_0

    .line 333
    :pswitch_4
    const-string v2, "programs"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 334
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 335
    if-nez p2, :cond_6

    sget-object p2, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION:[Ljava/lang/String;

    .line 336
    :cond_6
    if-nez p5, :cond_2

    const-string p5, "epg_stime ASC"

    goto/16 :goto_0

    .line 339
    :pswitch_5
    const-string v2, "programs"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 340
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 342
    if-nez p2, :cond_2

    sget-object p2, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION:[Ljava/lang/String;

    goto/16 :goto_0

    .line 345
    :pswitch_6
    const-string v2, "reservations"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 346
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 347
    if-nez p2, :cond_7

    sget-object p2, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION:[Ljava/lang/String;

    .line 348
    :cond_7
    if-nez p5, :cond_2

    const-string p5, "epg_stime ASC"

    goto/16 :goto_0

    .line 351
    :pswitch_7
    const-string v2, "reservations"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 352
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 354
    if-nez p2, :cond_2

    sget-object p2, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->PROJECTION:[Ljava/lang/String;

    goto/16 :goto_0

    .line 358
    :pswitch_8
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mOpenHelper:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 359
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v10, "SELECT count(*) FROM channels"

    .line 360
    .restart local v10    # "sql":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 363
    :cond_8
    invoke-virtual {v1, v10, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_1

    .line 367
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "sql":Ljava/lang/String;
    :pswitch_9
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mOpenHelper:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 368
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v10, "SELECT count(*) FROM programs"

    .line 369
    .restart local v10    # "sql":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 372
    :cond_9
    invoke-virtual {v1, v10, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_1

    .line 376
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "sql":Ljava/lang/String;
    :pswitch_a
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mOpenHelper:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 377
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v10, "SELECT count(*) FROM reservations"

    .line 378
    .restart local v10    # "sql":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 381
    :cond_a
    invoke-virtual {v1, v10, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_1

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/16 v6, 0x29

    const/4 v5, 0x1

    .line 456
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 457
    const-string v2, "MtvProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvProvider;->mOpenHelper:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 461
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 487
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 463
    :pswitch_1
    const-string v2, "areas"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 490
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 491
    return v0

    .line 466
    .end local v0    # "count":I
    :pswitch_2
    const-string v2, "channels"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 467
    .restart local v0    # "count":I
    goto :goto_0

    .line 469
    .end local v0    # "count":I
    :pswitch_3
    const-string v3, "channels"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, p2, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 471
    .restart local v0    # "count":I
    goto :goto_0

    .line 469
    .end local v0    # "count":I
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 473
    :pswitch_4
    const-string v2, "programs"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 474
    .restart local v0    # "count":I
    goto :goto_0

    .line 476
    .end local v0    # "count":I
    :pswitch_5
    const-string v3, "programs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, p2, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 478
    .restart local v0    # "count":I
    goto/16 :goto_0

    .line 476
    .end local v0    # "count":I
    :cond_2
    const-string v2, ""

    goto :goto_2

    .line 480
    :pswitch_6
    const-string v2, "reservations"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 481
    .restart local v0    # "count":I
    goto/16 :goto_0

    .line 483
    .end local v0    # "count":I
    :pswitch_7
    const-string v3, "reservations"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, p2, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 485
    .restart local v0    # "count":I
    goto/16 :goto_0

    .line 483
    .end local v0    # "count":I
    :cond_3
    const-string v2, ""

    goto :goto_3

    .line 461
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
