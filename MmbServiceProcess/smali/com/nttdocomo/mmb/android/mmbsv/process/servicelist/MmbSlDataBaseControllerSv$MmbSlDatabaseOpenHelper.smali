.class Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbSlDatabaseOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MmbSlDataBaseControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmbSlDatabaseOpenHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "aFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "aVersion"    # I

    .prologue
    .line 1274
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1282
    return-void
.end method


# virtual methods
.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 1350
    monitor-enter p0

    const/4 v1, 0x0

    .line 1352
    .local v1, "instance":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1363
    monitor-exit p0

    return-object v1

    .line 1354
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "err":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v2, "DB open error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1357
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1350
    .end local v0    # "err":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "aSQLDBInstance"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1302
    if-eqz p1, :cond_0

    .line 1305
    const-string v0, "CREATE TABLE serviceListNwTbl (networkId INTEGER NOT NULL,networkName TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1311
    const-string v0, "CREATE TABLE serviceListBcTbl (networkId INTEGER NOT NULL,broadcasterId INTEGER NOT NULL,broadcasterName TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1318
    const-string v0, "CREATE TABLE serviceListSvTbl (broadcasterId INTEGER NOT NULL,serviceId INTEGER NOT NULL,serviceType INTEGER NOT NULL,serviceName TEXT,serviceProviderName TEXT,partialReception INTEGER NOT NULL,transportStreamId INTEGER NOT NULL )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1332
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "aSQLDBInstance"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "aOldVersion"    # I
    .param p3, "aNewVersion"    # I

    .prologue
    .line 1389
    return-void
.end method
