.class public final Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;
.super Ljava/lang/Object;
.source "MmbPgDataBaseControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv$MmbPgUtilSQLiteHelperSv;
    }
.end annotation


# static fields
.field private static final THISINSTANCE:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;

.field private static context:Landroid/content/Context;


# instance fields
.field private sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

.field private utilSQLHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv$MmbPgUtilSQLiteHelperSv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->THISINSTANCE:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->context:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->utilSQLHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv$MmbPgUtilSQLiteHelperSv;

    .line 104
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    .line 128
    return-void
.end method

.method private deleteData()V
    .locals 13

    .prologue
    .line 465
    const/4 v8, 0x0

    .line 467
    .local v8, "cursol":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 470
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "historyDataTbl"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ROWID"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "timeMS"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timeMS ASC LIMIT 1000"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 476
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v10, v0

    .line 482
    .local v10, "lastrowid":J
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v10

    if-lez v0, :cond_2

    .line 483
    const-string v0, "return lastrowid -> error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    const-string v1, "return lastrowid -> error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    .end local v10    # "lastrowid":J
    :catch_0
    move-exception v9

    .line 497
    .local v9, "err":Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    .end local v9    # "err":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 525
    :cond_0
    if-eqz v8, :cond_1

    .line 526
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 487
    .restart local v10    # "lastrowid":J
    :cond_2
    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 490
    .local v12, "strlastrowid":Ljava/lang/String;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM historyDataTbl WHERE ROWID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 521
    .end local v10    # "lastrowid":J
    .end local v12    # "strlastrowid":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    .line 522
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 525
    :cond_4
    if-eqz v8, :cond_5

    .line 526
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_5
    return-void

    .line 500
    :catch_1
    move-exception v9

    .line 502
    .local v9, "err":Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 505
    .end local v9    # "err":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v9

    .line 507
    .local v9, "err":Ljava/lang/NullPointerException;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    .line 509
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 514
    :cond_6
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private getDataNum()I
    .locals 6

    .prologue
    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, "datanum":I
    const/4 v0, 0x0

    .line 554
    .local v0, "cursol":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT COUNT(*) FROM historyDataTbl;"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 557
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 558
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 561
    if-gez v1, :cond_1

    .line 562
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return datanum -> error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return datanum -> error"

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

    .line 567
    :catch_0
    move-exception v2

    .line 569
    .local v2, "err":Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    .end local v2    # "err":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 589
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v3

    .line 588
    :cond_1
    if-eqz v0, :cond_2

    .line 589
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 596
    :cond_2
    return v1

    .line 572
    :catch_1
    move-exception v2

    .line 574
    .local v2, "err":Ljava/lang/NullPointerException;
    :try_start_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_3

    .line 576
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 581
    :cond_3
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;
    .locals 1
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 145
    sput-object p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->context:Landroid/content/Context;

    .line 150
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->THISINSTANCE:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;

    return-object v0
.end method


# virtual methods
.method closeController()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 205
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->utilSQLHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv$MmbPgUtilSQLiteHelperSv;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->utilSQLHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv$MmbPgUtilSQLiteHelperSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv$MmbPgUtilSQLiteHelperSv;->close()V

    .line 213
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->utilSQLHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv$MmbPgUtilSQLiteHelperSv;

    .line 219
    :cond_1
    return-void
.end method

.method getDataAll()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 238
    .local v10, "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    const/4 v8, 0x0

    .line 241
    .local v8, "cursol":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "historyDataTbl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timeMS DESC LIMIT 1000"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 245
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v10    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    .local v11, "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    const/4 v12, 0x0

    .line 251
    .local v12, "tmp":Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;
    :cond_0
    :try_start_1
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;

    .end local v12    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;
    invoke-direct {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;-><init>()V

    .line 254
    .restart local v12    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;
    const-string v0, "category"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbCategory:I

    .line 256
    const-string v0, "crid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbCrid:Ljava/lang/String;

    .line 258
    const-string v0, "title"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbTitle:Ljava/lang/String;

    .line 260
    const-string v0, "reason"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbReason:I

    .line 262
    const-string v0, "timeMS"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbTimeMS:J

    .line 266
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const/4 v12, 0x0

    .line 269
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    move-object v10, v11

    .line 294
    .end local v11    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    .end local v12    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;
    .restart local v10    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    :cond_1
    if-eqz v8, :cond_2

    .line 295
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_2
    return-object v10

    .line 273
    :catch_0
    move-exception v9

    .line 275
    .local v9, "err":Landroid/database/SQLException;
    :goto_0
    :try_start_2
    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    .end local v9    # "err":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v8, :cond_3

    .line 295
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 278
    :catch_1
    move-exception v9

    .line 280
    .local v9, "err":Ljava/lang/NullPointerException;
    :goto_2
    if-nez v8, :cond_4

    .line 282
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 287
    :cond_4
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    .end local v9    # "err":Ljava/lang/NullPointerException;
    .end local v10    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    .restart local v11    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    .restart local v10    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    goto :goto_1

    .line 278
    .end local v10    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    .restart local v11    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    :catch_2
    move-exception v9

    move-object v10, v11

    .end local v11    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    .restart local v10    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    goto :goto_2

    .line 273
    .end local v10    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    .restart local v11    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    :catch_3
    move-exception v9

    move-object v10, v11

    .end local v11    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    .restart local v10    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    goto :goto_0
.end method

.method initController()V
    .locals 6

    .prologue
    .line 169
    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv$MmbPgUtilSQLiteHelperSv;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->context:Landroid/content/Context;

    const-string v3, "history.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv$MmbPgUtilSQLiteHelperSv;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->utilSQLHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv$MmbPgUtilSQLiteHelperSv;

    .line 173
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->utilSQLHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv$MmbPgUtilSQLiteHelperSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv$MmbPgUtilSQLiteHelperSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method initDataBase()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 419
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->closeController()V

    .line 423
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->context:Landroid/content/Context;

    const-string v3, "history.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 426
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 441
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->initController()V

    .line 446
    return-void

    .line 428
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 430
    .local v0, "err":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 433
    .end local v0    # "err":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 435
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method setLogData(ILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 9
    .param p1, "aCategory"    # I
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aTitle"    # Ljava/lang/String;
    .param p4, "aReason"    # I
    .param p5, "aTimeMS"    # J

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->getDataNum()I

    move-result v0

    .line 354
    .local v0, "datanum":I
    const/16 v5, 0x3e8

    if-gt v5, v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->deleteData()V

    .line 361
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 364
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 365
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "category"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string v5, "crid"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v5, "title"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v5, "reason"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    const-string v5, "timeMS"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 372
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "historyDataTbl"

    const-string v7, ""

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 374
    .local v2, "raw":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_2

    .line 375
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_1

    .line 394
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 401
    :cond_1
    return-void

    .line 377
    :cond_2
    :try_start_1
    const-string v5, "database insert error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    const-string v6, "database insert error"

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    .end local v2    # "raw":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 383
    .local v1, "err":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 393
    .end local v1    # "err":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_3

    .line 394
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v5

    .line 386
    :catch_1
    move-exception v1

    .line 388
    .local v1, "err":Ljava/lang/NullPointerException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
