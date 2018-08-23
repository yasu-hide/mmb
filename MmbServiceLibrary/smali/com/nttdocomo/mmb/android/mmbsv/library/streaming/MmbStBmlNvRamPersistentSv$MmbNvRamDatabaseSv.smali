.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MmbStBmlNvRamPersistentSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MmbNvRamDatabaseSv"
.end annotation


# static fields
.field public static final COL_BLOCK_NO:Ljava/lang/String; = "blockNo"

.field public static final COL_MMB_BROADCAST_ID:Ljava/lang/String; = "broadcasterId"

.field public static final COL_SAVE_DATA:Ljava/lang/String; = "saveData"

.field public static final DATA_BASE_FILE:Ljava/lang/String; = "bml.db"

.field private static final SQL_CREATE_NVRAM_TBL:Ljava/lang/String; = "CREATE TABLE nvramTbl ( broadcasterId integer not null, blockNo integer not null , saveData blob)"

.field public static final TABLE_NAME:Ljava/lang/String; = "nvramTbl"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "aFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "aVersion"    # I

    .prologue
    .line 393
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 400
    return-void
.end method


# virtual methods
.method public checkWriteNvram(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;)Z
    .locals 12
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;

    .prologue
    .line 600
    const/4 v11, 0x0

    .line 602
    .local v11, "ret":Z
    const/4 v0, 0x0

    .line 604
    .local v0, "wdatebase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 605
    const/4 v9, 0x0

    .line 606
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcasterId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;->mmbBroadcasterId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blockNo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;->mmbBlockNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 611
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    const-string v1, "nvramTbl"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 612
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 615
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    .line 616
    const/4 v11, 0x1

    .line 622
    :cond_0
    if-eqz v9, :cond_1

    .line 623
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 630
    :cond_1
    return v11

    .line 618
    :catch_0
    move-exception v10

    .line 619
    .local v10, "e":Landroid/database/SQLException;
    :try_start_1
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 620
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v2, "SQLException"

    invoke-direct {v1, v2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    .end local v10    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_2

    .line 623
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public clearNvram()V
    .locals 5

    .prologue
    .line 455
    const/4 v1, 0x0

    .line 458
    .local v1, "wdatebase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 462
    :try_start_1
    const-string v2, "nvramTbl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 463
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 478
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Landroid/database/SQLException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 466
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v3, "SQLException"

    invoke-direct {v2, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 468
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 470
    :catch_1
    move-exception v0

    .line 471
    .restart local v0    # "e":Landroid/database/SQLException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 472
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v3, "SQLException"

    invoke-direct {v2, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "aArg0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 416
    const-string v0, "CREATE TABLE nvramTbl ( broadcasterId integer not null, blockNo integer not null , saveData blob)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "aArg0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "aArg1"    # I
    .param p3, "aArg2"    # I

    .prologue
    .line 440
    return-void
.end method

.method public readNvram(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;)Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    .locals 13
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;

    .prologue
    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "wdatebase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 556
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 558
    .local v11, "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 560
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcasterId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;->mmbBroadcasterId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blockNo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;->mmbBlockNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 564
    .local v3, "readwhile":Ljava/lang/String;
    const-string v1, "nvramTbl"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 565
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 566
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 567
    new-instance v12, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;

    invoke-direct {v12}, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;-><init>()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    .end local v11    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    .local v12, "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    :try_start_1
    const-string v1, "saveData"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v12, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;->mmbSaveData:[B
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v12

    .line 576
    .end local v12    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    .restart local v11    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    :cond_0
    if-eqz v9, :cond_1

    .line 577
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 583
    :cond_1
    return-object v11

    .line 572
    .end local v3    # "readwhile":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 573
    .local v10, "e":Landroid/database/SQLException;
    :goto_0
    :try_start_2
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 574
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v2, "SQLException"

    invoke-direct {v1, v2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    .end local v10    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    :goto_1
    if-eqz v9, :cond_2

    .line 577
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 576
    .end local v11    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    .restart local v3    # "readwhile":Ljava/lang/String;
    .restart local v12    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    :catchall_1
    move-exception v1

    move-object v11, v12

    .end local v12    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    .restart local v11    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    goto :goto_1

    .line 572
    .end local v11    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    .restart local v12    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    :catch_1
    move-exception v10

    move-object v11, v12

    .end local v12    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    .restart local v11    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    goto :goto_0
.end method

.method public writeNvram(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;)V
    .locals 12
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 495
    .local v0, "wdatebase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 497
    const/4 v9, 0x0

    .line 499
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 500
    .local v11, "values":Landroid/content/ContentValues;
    const-string v1, "broadcasterId"

    iget v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;->mmbBroadcasterId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    const-string v1, "blockNo"

    iget v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;->mmbBlockNo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    const-string v1, "saveData"

    iget-object v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;->mmbSaveData:[B

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcasterId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;->mmbBroadcasterId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blockNo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;->mmbBlockNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "selection":Ljava/lang/String;
    const-string v1, "nvramTbl"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 510
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 513
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 515
    const-string v1, "nvramTbl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v11, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 522
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    if-eqz v9, :cond_0

    .line 528
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 540
    return-void

    .line 519
    :cond_1
    :try_start_3
    const-string v1, "nvramTbl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 523
    .end local v3    # "selection":Ljava/lang/String;
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 524
    .local v10, "e":Landroid/database/SQLException;
    :try_start_4
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 525
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v2, "SQLException"

    invoke-direct {v1, v2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 527
    .end local v10    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_2

    .line 528
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    .line 532
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v10

    .line 533
    .restart local v10    # "e":Landroid/database/SQLException;
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 534
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v2, "SQLException"

    invoke-direct {v1, v2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
