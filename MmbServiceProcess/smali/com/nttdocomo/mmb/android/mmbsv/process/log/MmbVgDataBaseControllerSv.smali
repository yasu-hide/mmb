.class public final Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;
.super Ljava/lang/Object;
.source "MmbVgDataBaseControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv$MmbVgUtilSQLiteHelperSv;
    }
.end annotation


# static fields
.field private static final THISINSTANCE:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

.field private static context:Landroid/content/Context;


# instance fields
.field private sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

.field private utilSQLHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv$MmbVgUtilSQLiteHelperSv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->THISINSTANCE:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->context:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->utilSQLHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv$MmbVgUtilSQLiteHelperSv;

    .line 104
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    .line 128
    return-void
.end method

.method private deleteData()V
    .locals 12

    .prologue
    .line 509
    const/4 v8, 0x0

    .line 511
    .local v8, "cursol":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 514
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "logDataTbl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 519
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 525
    .local v10, "lastrowid":I
    if-gez v10, :cond_2

    .line 526
    const-string v0, "return lastrowid -> error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    const-string v1, "return lastrowid -> error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    .end local v10    # "lastrowid":I
    :catch_0
    move-exception v9

    .line 540
    .local v9, "err":Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    .end local v9    # "err":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 568
    :cond_0
    if-eqz v8, :cond_1

    .line 569
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 530
    .restart local v10    # "lastrowid":I
    :cond_2
    :try_start_2
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 533
    .local v11, "strlastrowid":Ljava/lang/String;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM logDataTbl WHERE _id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 564
    .end local v10    # "lastrowid":I
    .end local v11    # "strlastrowid":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    .line 565
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 568
    :cond_4
    if-eqz v8, :cond_5

    .line 569
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 576
    :cond_5
    return-void

    .line 543
    :catch_1
    move-exception v9

    .line 545
    .local v9, "err":Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 548
    .end local v9    # "err":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v9

    .line 550
    .local v9, "err":Ljava/lang/NullPointerException;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    .line 552
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 557
    :cond_6
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private getDataNum()I
    .locals 6

    .prologue
    .line 593
    const/4 v1, 0x0

    .line 594
    .local v1, "datanum":I
    const/4 v0, 0x0

    .line 597
    .local v0, "cursol":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT COUNT(*) FROM logDataTbl;"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 600
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 601
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 604
    if-gez v1, :cond_1

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursol.getInt return -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursol.getInt return -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :catch_0
    move-exception v2

    .line 612
    .local v2, "err":Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 613
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    .end local v2    # "err":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 632
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v3

    .line 631
    :cond_1
    if-eqz v0, :cond_2

    .line 632
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 639
    :cond_2
    return v1

    .line 615
    :catch_1
    move-exception v2

    .line 617
    .local v2, "err":Ljava/lang/NullPointerException;
    :try_start_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_3

    .line 619
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 624
    :cond_3
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;
    .locals 1
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 145
    sput-object p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->context:Landroid/content/Context;

    .line 150
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->THISINSTANCE:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    return-object v0
.end method


# virtual methods
.method closeController()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 206
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->utilSQLHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv$MmbVgUtilSQLiteHelperSv;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->utilSQLHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv$MmbVgUtilSQLiteHelperSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv$MmbVgUtilSQLiteHelperSv;->close()V

    .line 214
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->utilSQLHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv$MmbVgUtilSQLiteHelperSv;

    .line 220
    :cond_1
    return-void
.end method

.method deleteDataAll()V
    .locals 3

    .prologue
    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 322
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS logDataTbl"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CREATE TABLE logDataTbl (_id INTEGER PRIMARY KEY AUTOINCREMENT, category TEXT NOT NULL,time TEXT NOT NULL,crid TEXT NOT NULL,seqLabel TEXT )"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 352
    :cond_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 329
    .local v0, "err":Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    .end local v0    # "err":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 345
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    throw v1

    .line 332
    :catch_1
    move-exception v0

    .line 334
    .local v0, "err":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 337
    .end local v0    # "err":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 339
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method getDataAll()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 239
    .local v10, "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    const/4 v8, 0x0

    .line 242
    .local v8, "cursol":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "logDataTbl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 246
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v10    # "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    .local v11, "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    const/4 v12, 0x0

    .line 252
    .local v12, "tmp":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;
    :cond_0
    :try_start_1
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;

    .end local v12    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;
    invoke-direct {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;-><init>()V

    .line 255
    .restart local v12    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;
    const-string v0, "category"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;->category:Ljava/lang/String;

    .line 257
    const-string v0, "time"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;->time:Ljava/lang/String;

    .line 259
    const-string v0, "crid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;->crid:Ljava/lang/String;

    .line 261
    const-string v0, "seqLabel"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;->seqLabel:Ljava/lang/String;

    .line 265
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    const/4 v12, 0x0

    .line 268
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    move-object v10, v11

    .line 293
    .end local v11    # "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    .end local v12    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;
    .restart local v10    # "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    :cond_1
    if-eqz v8, :cond_2

    .line 294
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_2
    return-object v10

    .line 272
    :catch_0
    move-exception v9

    .line 274
    .local v9, "err":Landroid/database/SQLException;
    :goto_0
    :try_start_2
    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    .end local v9    # "err":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v8, :cond_3

    .line 294
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 277
    :catch_1
    move-exception v9

    .line 279
    .local v9, "err":Ljava/lang/NullPointerException;
    :goto_2
    if-nez v8, :cond_4

    .line 281
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 286
    :cond_4
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    .end local v9    # "err":Ljava/lang/NullPointerException;
    .end local v10    # "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    .restart local v11    # "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11    # "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    .restart local v10    # "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    goto :goto_1

    .line 277
    .end local v10    # "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    .restart local v11    # "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    :catch_2
    move-exception v9

    move-object v10, v11

    .end local v11    # "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    .restart local v10    # "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    goto :goto_2

    .line 272
    .end local v10    # "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    .restart local v11    # "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    :catch_3
    move-exception v9

    move-object v10, v11

    .end local v11    # "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    .restart local v10    # "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    goto :goto_0
.end method

.method initController()V
    .locals 6

    .prologue
    .line 169
    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv$MmbVgUtilSQLiteHelperSv;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->context:Landroid/content/Context;

    const-string v3, "log.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv$MmbVgUtilSQLiteHelperSv;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->utilSQLHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv$MmbVgUtilSQLiteHelperSv;

    .line 174
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->utilSQLHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv$MmbVgUtilSQLiteHelperSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv$MmbVgUtilSQLiteHelperSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method initDataBase()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 463
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->closeController()V

    .line 467
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->context:Landroid/content/Context;

    const-string v3, "log.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 470
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 485
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->initController()V

    .line 490
    return-void

    .line 472
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 474
    .local v0, "err":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 477
    .end local v0    # "err":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 479
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method setLogData(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "aCategory"    # I
    .param p2, "aTimeMS"    # J
    .param p4, "aCrid"    # Ljava/lang/String;
    .param p5, "aLabel"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->getDataNum()I

    move-result v0

    .line 385
    .local v0, "datanum":I
    const/16 v6, 0x3e8

    if-gt v6, v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->deleteData()V

    .line 392
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 395
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMddHHmmss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "date":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 400
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "category"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v6, "time"

    invoke-virtual {v3, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v6, "crid"

    invoke-virtual {v3, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    if-nez p5, :cond_2

    .line 405
    const-string v6, "seqLabel"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 411
    :goto_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "logDataTbl"

    const-string v8, ""

    invoke-virtual {v6, v7, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 413
    .local v4, "raw":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 414
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_1

    .line 438
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 445
    :cond_1
    return-void

    .line 407
    .end local v4    # "raw":J
    :cond_2
    :try_start_1
    const-string v6, "seqLabel"

    invoke-virtual {v3, v6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 420
    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 422
    .local v2, "err":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    .end local v2    # "err":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v7, :cond_3

    .line 438
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v6

    .line 416
    .restart local v1    # "date":Ljava/lang/String;
    .restart local v3    # "values":Landroid/content/ContentValues;
    .restart local v4    # "raw":J
    :cond_4
    :try_start_3
    const-string v6, "database insert error"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    const-string v7, "database insert error"

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 425
    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "raw":J
    :catch_1
    move-exception v2

    .line 427
    .local v2, "err":Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 430
    .end local v2    # "err":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    .line 432
    .local v2, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
