.class Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
.super Ljava/lang/Object;
.source "MtvFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/provider/MtvFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MtvFileManagerTvFileBuilder"
.end annotation


# static fields
.field public static final DBTYPE_TV_FILE_EXTMEM:I = 0x2

.field public static final DBTYPE_TV_FILE_PHONEMEM:I = 0x1

.field public static final DBTYPE_TV_IMAGE:I = 0x3


# instance fields
.field private bMoveToFirstDone:Z

.field private index:I

.field private indexAPID:I

.field private indexChannelName:I

.field private indexCreationTime:I

.field private indexDuration:I

.field private indexFileFormat:I

.field private indexFilePath:I

.field private indexFileSize:I

.field private indexIsLATM:I

.field private indexProgramName:I

.field private indexVPID:I

.field private mCursor:Landroid/database/Cursor;

.field private mDbType:I


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 9
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbType"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1425
    iput-object v5, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    .line 1426
    iput v6, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mDbType:I

    .line 1440
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->bMoveToFirstDone:Z

    .line 1444
    const/4 v1, 0x0

    .line 1445
    .local v1, "query":Ljava/lang/String;
    iput p2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mDbType:I

    .line 1447
    if-eq p2, v6, :cond_0

    if-ne p2, v7, :cond_3

    .line 1449
    :cond_0
    const-string v1, "select rowid, * from tvfiles_dbtable"

    .line 1462
    :goto_0
    if-eqz v1, :cond_1

    .line 1466
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1475
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_8

    .line 1477
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 1479
    const-string v2, "MtvFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TvFileBuilder: no entries in this DB !, dbType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1481
    iput-object v5, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    .line 1517
    :cond_2
    :goto_2
    return-void

    .line 1452
    :cond_3
    if-ne p2, v8, :cond_4

    .line 1454
    const-string v1, "select rowid, * from tvimage_dbtable"

    goto :goto_0

    .line 1459
    :cond_4
    const-string v2, "MtvFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported dbtype "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1468
    :catch_0
    move-exception v0

    .line 1470
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "MtvFileManager"

    const-string v3, "MtvFileManagerTvFileBuilder failed()..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1472
    iput-object v5, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    goto :goto_1

    .line 1483
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_5
    if-eq p2, v6, :cond_6

    if-ne p2, v7, :cond_7

    .line 1487
    :cond_6
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "rowid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->index:I

    .line 1488
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "chName"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexChannelName:I

    .line 1489
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "proName"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexProgramName:I

    .line 1490
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "fullFilePath"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexFilePath:I

    .line 1491
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "V_PID"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexVPID:I

    .line 1492
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "A_PID"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexAPID:I

    .line 1493
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "iCreateTime"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexCreationTime:I

    .line 1494
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "iDuration"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexDuration:I

    .line 1495
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "iFileFormat"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexFileFormat:I

    .line 1496
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "iFileSize"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexFileSize:I

    .line 1497
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "isLATM"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexIsLATM:I

    goto/16 :goto_2

    .line 1499
    :cond_7
    if-ne p2, v8, :cond_2

    .line 1503
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "rowid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->index:I

    .line 1504
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "chName"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexChannelName:I

    .line 1505
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "proName"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexProgramName:I

    .line 1506
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "fullFilePath"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexFilePath:I

    .line 1507
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "iCreateTime"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexCreationTime:I

    .line 1508
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "iFileFormat"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexFileFormat:I

    .line 1509
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    const-string v3, "iFileSize"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexFileSize:I

    goto/16 :goto_2

    .line 1514
    :cond_8
    const-string v2, "MtvFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TvFileBuider failed. Query ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], dbType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    iput-object v5, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    .line 1612
    :cond_0
    return-void
.end method

.method public getItemSize()I
    .locals 2

    .prologue
    .line 1596
    const/4 v0, 0x0

    .line 1597
    .local v0, "itemSize":I
    iget-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 1598
    iget-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1600
    :cond_0
    return v0
.end method

.method public getNextTvFile()Lcom/samsung/sec/mtv/provider/MtvFile;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 1521
    const/4 v1, 0x0

    .line 1522
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 1523
    .local v0, "newTvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_6

    .line 1525
    iget-boolean v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->bMoveToFirstDone:Z

    if-nez v3, :cond_3

    .line 1527
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->bMoveToFirstDone:Z

    .line 1528
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 1537
    :goto_0
    if-ne v1, v4, :cond_5

    .line 1539
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvFile;

    .end local v0    # "newTvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    invoke-direct {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;-><init>()V

    .line 1540
    .restart local v0    # "newTvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    if-eqz v0, :cond_1

    .line 1542
    iget v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mDbType:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mDbType:I

    if-ne v3, v6, :cond_4

    .line 1544
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->index:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->index:I

    .line 1545
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexChannelName:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->channelName:Ljava/lang/String;

    .line 1546
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexProgramName:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->programName:Ljava/lang/String;

    .line 1547
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexFilePath:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->filePath:Ljava/lang/String;

    .line 1548
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexVPID:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->pidOfVideo:I

    .line 1549
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexAPID:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->pidOfAudio:I

    .line 1550
    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexCreationTime:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->creationTime:Ljava/util/Date;

    .line 1551
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexDuration:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->durationOfRecording:I

    .line 1552
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexFileFormat:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->fileFormat:I

    .line 1553
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexFileSize:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->fileSize:J

    .line 1554
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexIsLATM:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->isLATM:I

    .line 1557
    iget v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mDbType:I

    if-ne v3, v6, :cond_1

    .line 1558
    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->index:I

    mul-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->index:I

    .line 1591
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    move-object v0, v2

    .end local v0    # "newTvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    :cond_2
    return-object v0

    .line 1533
    .restart local v0    # "newTvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    :cond_3
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    goto/16 :goto_0

    .line 1562
    :cond_4
    iget v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mDbType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1564
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->index:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->index:I

    .line 1565
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexChannelName:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->channelName:Ljava/lang/String;

    .line 1566
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexProgramName:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->programName:Ljava/lang/String;

    .line 1567
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexFilePath:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->filePath:Ljava/lang/String;

    .line 1568
    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexCreationTime:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->creationTime:Ljava/util/Date;

    .line 1569
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexFileFormat:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->fileFormat:I

    .line 1570
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->indexFileSize:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->fileSize:J

    .line 1573
    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->index:I

    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->access$100(I)I

    move-result v3

    iput v3, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->index:I

    goto :goto_1

    .line 1582
    :cond_5
    iget-object v3, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1583
    iput-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->mCursor:Landroid/database/Cursor;

    goto :goto_1

    .line 1588
    :cond_6
    const-string v3, "MtvFileManager"

    const-string v4, "TvFileBuilder: cursor is null"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
