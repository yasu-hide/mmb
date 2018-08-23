.class Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv$MmbPgUtilSQLiteHelperSv;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MmbPgDataBaseControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmbPgUtilSQLiteHelperSv"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aDbName"    # Ljava/lang/String;
    .param p3, "aFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "aDbVersion"    # I

    .prologue
    .line 608
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 615
    return-void
.end method


# virtual methods
.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 665
    monitor-enter p0

    const/4 v1, 0x0

    .line 667
    .local v1, "instance":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 678
    monitor-exit p0

    return-object v1

    .line 669
    :catch_0
    move-exception v0

    .line 671
    .local v0, "err":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 672
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
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
    .line 634
    if-eqz p1, :cond_0

    .line 636
    :try_start_0
    const-string v0, "CREATE TABLE historyDataTbl (category INTEGER NOT NULL,crid TEXT NOT NULL,title TEXT NOT NULL,reason INTEGER NOT NULL,timeMS INTEGER NOT NULL )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "aSQLDBInstance"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "aOldVersion"    # I
    .param p3, "aNewVersion"    # I

    .prologue
    .line 703
    return-void
.end method
