.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MmbCaCasDrmDbOpenHelperSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableQueryResultListener;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbDeleteDataSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbUpdateDataSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbInsertDataSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbQueryDataSv;
    }
.end annotation


# static fields
.field public static final DB_DIRECTORY:Ljava/lang/String;

.field public static final SQLITE_FNAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CASTest/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;->DB_DIRECTORY:Ljava/lang/String;

    .line 174
    const-string v0, "casdrm.db"

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;->SQLITE_FNAME:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 194
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;->SQLITE_FNAME:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 198
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;->SQLITE_FNAME:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 199
    .local v1, "dbfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 211
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 217
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void
.end method

.method private checkSQLiteDatabaseCorrupt(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5
    .param p1, "aDb"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    .line 418
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_0

    .line 420
    const-string v3, "PRAGMA table_info ( licenseDeleteTbl )"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 421
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 422
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 423
    .local v0, "cnt":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 424
    if-lez v0, :cond_1

    .line 438
    .end local v0    # "cnt":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v2

    .line 433
    .restart local v0    # "cnt":I
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "aDb"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 282
    const-string v0, "CREATE TABLE licenseDeleteTbl ( entityid integer not null, authority text not null, primary key ( entityid, authority ))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 286
    return-void
.end method


# virtual methods
.method public deleteDatabase(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbDeleteDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;)I
    .locals 6
    .param p1, "aData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbDeleteDataSv;
    .param p2, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 612
    const/high16 v1, -0x80000000

    .line 613
    .local v1, "result":I
    const/4 v2, 0x0

    .line 614
    .local v2, "wdb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 615
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 620
    :try_start_0
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbDeleteDataSv;->mmbTable:Ljava/lang/String;

    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbDeleteDataSv;->mmbWhereClause:Ljava/lang/String;

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbDeleteDataSv;->mmbWhereArgs:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 624
    .local v0, "ans":I
    if-lez v0, :cond_2

    .line 625
    if-eqz p2, :cond_0

    .line 626
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;->successful(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)I

    move-result v1

    .line 628
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 640
    return v1

    .line 630
    :cond_2
    if-eqz p2, :cond_1

    .line 631
    :try_start_1
    invoke-interface {p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;->failure(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 635
    .end local v0    # "ans":I
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 394
    .local v0, "result":Landroid/database/sqlite/SQLiteDatabase;
    monitor-exit p0

    return-object v0

    .line 390
    .end local v0    # "result":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 361
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 362
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;->checkSQLiteDatabaseCorrupt(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 364
    new-instance v1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>()V

    .line 365
    .local v1, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v2, "SQLite database corrupted."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    throw v1

    .line 371
    .end local v1    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :cond_0
    return-object v0
.end method

.method public insertDatabase(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbInsertDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;)I
    .locals 7
    .param p1, "aData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbInsertDataSv;
    .param p2, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 514
    const/high16 v2, -0x80000000

    .line 515
    .local v2, "result":I
    const/4 v3, 0x0

    .line 516
    .local v3, "wdb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 517
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 522
    :try_start_0
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbInsertDataSv;->mmbTable:Ljava/lang/String;

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbInsertDataSv;->mmbNullColumnHack:Ljava/lang/String;

    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbInsertDataSv;->mmbValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 526
    .local v0, "cnt":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    .line 527
    if-eqz p2, :cond_0

    .line 528
    invoke-interface {p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;->failure(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 537
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 542
    return v2

    .line 531
    :cond_1
    if-eqz p2, :cond_2

    .line 532
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;->successful(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)I

    move-result v2

    .line 534
    :cond_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 537
    .end local v0    # "cnt":J
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "aDb"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 245
    const-string v0, "CREATE TABLE messageIdTbl ( crid text not null COLLATE NOCASE, entityid integer not null, authority text not null, messageid blob not null, messageidHash blob not null, savedTime integer not null, primary key ( crid ))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    const-string v0, "CREATE TABLE tierbitQuotaInfoTbl ( entityId integer not null, authority text not null, quotaInfo blob not null, primary key ( entityId, authority ))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    const-string v0, "CREATE TABLE customerIdIdentiferTbl ( entityId integer not null, customerIdIdentifier blob not null, customerIdIdentifierHash blob not null, primary key ( entityId ))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    const-string v0, "CREATE TABLE purchaseHistoryTbl ( purchaseId text not null, crid text COLLATE NOCASE, purchaseType integer not null, updateDay integer not null, entityid integer not null, authority text not null, acquireLicense integer not null, expirationDate integer not null, primary key ( purchaseId ))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 253
    const-string v0, "CREATE TABLE licenseTargetTbl ( licenseid text not null, purchaseidref text not null, crid text not null COLLATE NOCASE, entityid integer not null, authority text not null, isAutoTarget integer not null, isFree integer not null, issueStartTime integer not null, issueEndTime integer not null, primary key ( licenseid ))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 255
    const-string v0, "CREATE INDEX idx_purchaseHistory_crid ON purchaseHistoryTbl ( crid ) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    const-string v0, "CREATE TABLE licenseDeleteHistoryTbl ( licenseid text not null, crid text not null, purchaseid text, entityid integer not null, authority text not null, expirationDate integer not null, primary key ( licenseid ))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "aDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "aOldVersion"    # I
    .param p3, "aNewVersion"    # I

    .prologue
    .line 316
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 318
    const-string v0, "CREATE TABLE licenseDeleteHistoryTbl ( licenseid text not null, crid text not null, purchaseid text, entityid integer not null, authority text not null, expirationDate integer not null, primary key ( licenseid ))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 321
    :cond_0
    const-string v0, "DROP TABLE messageIdTbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    const-string v0, "DROP TABLE tierbitQuotaInfoTbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 325
    const-string v0, "DROP TABLE customerIdIdentiferTbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 327
    const-string v0, "DROP TABLE purchaseHistoryTbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 329
    const-string v0, "DROP TABLE licenseTargetTbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 331
    const-string v0, "DROP TABLE licenseDeleteTbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 333
    const-string v0, "DROP TABLE licenseDeleteHistoryTbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 335
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public queryDatabase(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbQueryDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableQueryResultListener;)V
    .locals 12
    .param p1, "aData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbQueryDataSv;
    .param p2, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableQueryResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "wdb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 460
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 465
    :try_start_0
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbQueryDataSv;->mmbTable:Ljava/lang/String;

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbQueryDataSv;->mmbColumns:[Ljava/lang/String;

    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbQueryDataSv;->mmbSelection:Ljava/lang/String;

    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbQueryDataSv;->mmbSelectionArgs:[Ljava/lang/String;

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbQueryDataSv;->mmbGroupBy:Ljava/lang/String;

    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbQueryDataSv;->mmbHaving:Ljava/lang/String;

    iget-object v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbQueryDataSv;->mmbOrderBy:Ljava/lang/String;

    iget-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbQueryDataSv;->mmbLimit:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 469
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 470
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 474
    .local v9, "all":I
    if-lez v9, :cond_4

    .line 475
    const/4 v10, 0x0

    .line 477
    .local v10, "cnt":I
    :cond_0
    if-eqz p2, :cond_1

    .line 478
    invoke-interface {p2, v0, v11, v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableQueryResultListener;->successful(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;II)V

    .line 480
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 481
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 488
    .end local v10    # "cnt":I
    :cond_2
    :goto_0
    if-eqz v11, :cond_3

    .line 489
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 495
    :cond_3
    return-void

    .line 483
    :cond_4
    if-eqz p2, :cond_2

    .line 484
    :try_start_1
    invoke-interface {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableQueryResultListener;->failure(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 488
    .end local v9    # "all":I
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_5

    .line 489
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public replaceDatabase(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbInsertDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;)I
    .locals 7
    .param p1, "aData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbInsertDataSv;
    .param p2, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 661
    const/high16 v2, -0x80000000

    .line 662
    .local v2, "result":I
    const/4 v3, 0x0

    .line 663
    .local v3, "wdb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 664
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 669
    :try_start_0
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbInsertDataSv;->mmbTable:Ljava/lang/String;

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbInsertDataSv;->mmbNullColumnHack:Ljava/lang/String;

    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbInsertDataSv;->mmbValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 673
    .local v0, "cnt":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    .line 674
    if-eqz p2, :cond_0

    .line 675
    invoke-interface {p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;->failure(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 684
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 689
    return v2

    .line 678
    :cond_1
    if-eqz p2, :cond_2

    .line 679
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;->successful(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)I

    move-result v2

    .line 681
    :cond_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 684
    .end local v0    # "cnt":J
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public updateDatabase(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbUpdateDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;)I
    .locals 7
    .param p1, "aData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbUpdateDataSv;
    .param p2, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 562
    const/high16 v1, -0x80000000

    .line 563
    .local v1, "result":I
    const/4 v2, 0x0

    .line 564
    .local v2, "wdb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 565
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 570
    :try_start_0
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbUpdateDataSv;->mmbTable:Ljava/lang/String;

    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbUpdateDataSv;->mmbValues:Landroid/content/ContentValues;

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbUpdateDataSv;->mmbWhereClause:Ljava/lang/String;

    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbUpdateDataSv;->mmbWhereArgs:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 576
    .local v0, "ans":I
    if-lez v0, :cond_2

    .line 577
    if-eqz p2, :cond_0

    .line 578
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;->successful(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)I

    move-result v1

    .line 580
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 592
    return v1

    .line 582
    :cond_2
    if-eqz p2, :cond_1

    .line 583
    :try_start_1
    invoke-interface {p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbOpenHelperSv$MmbCaCasDrmDbWritableResultListener;->failure(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 587
    .end local v0    # "ans":I
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method
