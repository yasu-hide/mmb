.class public Lcom/samsung/sec/mtv/provider/MtvBMLManager;
.super Ljava/lang/Object;
.source "MtvBMLManager.java"


# static fields
.field private static final MTV_BML_MANAGER_AFFILIATION_BLOCK_DB_TABLE_NAME:Ljava/lang/String; = "dtvaffiliationblock"

.field private static final MTV_BML_MANAGER_AFFILIATION_BROADCASTER_DB_TABLE_NAME:Ljava/lang/String; = "dtvaffiliationbroadcaster"

.field private static final MTV_BML_MANAGER_CPROBM_DATE_INFO_FILE_NAME:Ljava/lang/String; = "/data/one-seg/CproBmMng.dat"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_AFFILIATION_ID_0:Ljava/lang/String; = "affiliationID0"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_AFFILIATION_ID_1:Ljava/lang/String; = "affiliationID1"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_AFFILIATION_ID_2:Ljava/lang/String; = "affiliationID2"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_AFFILIATION_ID_3:Ljava/lang/String; = "affiliationID3"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_AFFILIATION_ID_4:Ljava/lang/String; = "affiliationID4"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_AFFILIATION_ID_5:Ljava/lang/String; = "affiliationID5"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_CPROBMTYPE:Ljava/lang/String; = "CproBMType"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_DST_URI:Ljava/lang/String; = "dstURI"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_ID:Ljava/lang/String; = "id"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_INDEX:Ljava/lang/String; = "rowid"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_NAME:Ljava/lang/String; = "/data/one-seg/bml.db"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_ORIGINAL_NETWORK_ID:Ljava/lang/String; = "originalNetworkID"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_OUTLINE:Ljava/lang/String; = "outline"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_RESERVED:Ljava/lang/String; = "reserved"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_SERVICE_ID:Ljava/lang/String; = "serviceID"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_TABLE_NAME:Ljava/lang/String; = "dtvcprobminfo"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_TITLE:Ljava/lang/String; = "title"

.field private static final MTV_BML_MANAGER_CPROBM_INFO_DB_TRANSPORT_STREAM_ID:Ljava/lang/String; = "transportStreamID"

.field private static final TAG:Ljava/lang/String; = "MtvBMLManager"

.field private static mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private static vCProBMInfo:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->vCProBMInfo:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static deleteCProBMInfo(I)V
    .locals 5
    .param p0, "in_listIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 334
    const-string v1, "MtvBMLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteCProBMInfo() : called. listIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :try_start_0
    const-string v1, "/data/one-seg/bml.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 340
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM dtvcprobminfo WHERE  ID== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 350
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 351
    sput-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "MtvBMLManager"

    const-string v2, "deleteCProBMInfo() : CProBMInfo    data open failed"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 350
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 351
    sput-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 348
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 350
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 351
    sput-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    throw v1
.end method

.method public static deleteCProBMInfoAll()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 362
    const-string v1, "MtvBMLManager"

    const-string v2, "deleteCProBMInfoAll() : called."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :try_start_0
    const-string v1, "/data/one-seg/bml.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 368
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM dtvcprobminfo"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 378
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 379
    sput-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 383
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_0
    return-void

    .line 370
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_0
    move-exception v0

    .line 372
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "MtvBMLManager"

    const-string v2, "deleteCProBMInfoAll() : CProBMInfo     data open failed"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 378
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 379
    sput-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 378
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 379
    sput-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    throw v1
.end method

.method public static deleteStationData_DeleteAffiliation(I)V
    .locals 9
    .param p0, "affiliation_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 490
    const-string v2, "MtvBMLManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteStationData_DeleteAffiliation() : called. affiliation_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :try_start_0
    const-string v2, "/data/one-seg/bml.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 497
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select count(*) from dtvaffiliationblock where affiliationID=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 499
    .local v1, "mCursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 503
    const-string v2, "MtvBMLManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteStationData_DeleteAffiliation() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM dtvaffiliationblockWHERE  AFFILIATIONID=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 510
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 512
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 514
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 515
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 519
    :cond_1
    const/4 v1, 0x0

    .line 520
    const-string v2, "/data/one-seg/bml.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 521
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select count(*) from dtvaffiliationbroadcaster where affiliationID=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 523
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 525
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 527
    const-string v2, "MtvBMLManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteStationData_DeleteAffiliation() :count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM dtvaffiliationbroadcasterWHERE AFFILIATIONID== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 534
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_3

    .line 544
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 545
    sput-object v8, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 549
    .end local v1    # "mCursor":Landroid/database/Cursor;
    :cond_3
    :goto_2
    return-void

    .line 507
    .restart local v1    # "mCursor":Landroid/database/Cursor;
    :cond_4
    :try_start_1
    const-string v2, "MtvBMLManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteStationData_DeleteAffiliation() : mCursor.getCount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 537
    .end local v1    # "mCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 542
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_3

    .line 544
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 545
    sput-object v8, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_2

    .line 531
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v1    # "mCursor":Landroid/database/Cursor;
    :cond_5
    :try_start_3
    const-string v2, "MtvBMLManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteStationData_DeleteAffiliation() : mCursor.getCount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 542
    .end local v1    # "mCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_6

    .line 544
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 545
    sput-object v8, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_6
    throw v2
.end method

.method public static deleteStationData_DeleteAllAffiliation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 557
    const-string v1, "MtvBMLManager"

    const-string v2, "deleteStationData_DeleteAllAffiliation() : called."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :try_start_0
    const-string v1, "/data/one-seg/bml.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 564
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM dtvaffiliationblock"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 567
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM dtvaffiliationbroadcaster"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 576
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 577
    sput-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 580
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_0
    return-void

    .line 569
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_0
    move-exception v0

    .line 571
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 576
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 577
    sput-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 574
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 576
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 577
    sput-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    throw v1
.end method

.method public static deleteStationData_DeleteNetwork(II)V
    .locals 10
    .param p0, "affiliation_id"    # I
    .param p1, "originalNetwork_index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 588
    const/4 v2, -0x1

    .line 590
    .local v2, "originalNetworkID":I
    const-string v3, "MtvBMLManager"

    const-string v4, "deleteStationData_DeleteNetwork() : called."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :try_start_0
    const-string v3, "/data/one-seg/bml.db"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sput-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 596
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select originalNetworkID from dtvaffiliationbroadcaster where affiliationID=? order by originalNetworkID limit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 597
    .local v1, "mCursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 602
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 603
    const/4 v1, 0x0

    .line 604
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    .line 606
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 607
    const/4 v3, 0x0

    sput-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 610
    :cond_1
    if-gez v2, :cond_3

    .line 612
    const-string v3, "MtvBMLManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteStationData_DeleteNetwork() : Error in retrieving originalNetworkID."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :goto_0
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_2

    .line 652
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 653
    sput-object v9, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 656
    .end local v1    # "mCursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-void

    .line 618
    .restart local v1    # "mCursor":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    const-string v3, "/data/one-seg/bml.db"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sput-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 620
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "select count(*) from dtvaffiliationblock where affiliationID=? and originalNetworkID=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 621
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 623
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 625
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "delete from dtvaffiliationblock where affiliationID=? and originalNetworkID=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    :cond_4
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 633
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_5

    .line 635
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 636
    const/4 v3, 0x0

    sput-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 640
    :cond_5
    const-string v3, "/data/one-seg/bml.db"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sput-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 641
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "delete from dtvaffiliationbroadcaster where affiliationID=? and originalNetworkID=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 645
    .end local v1    # "mCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 650
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_2

    .line 652
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 653
    sput-object v9, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto/16 :goto_1

    .line 629
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v1    # "mCursor":Landroid/database/Cursor;
    :cond_6
    :try_start_3
    const-string v3, "MtvBMLManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteStationData_DeleteNetwork() : Count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 650
    .end local v1    # "mCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_7

    .line 652
    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 653
    sput-object v9, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_7
    throw v3
.end method

.method public static deleteStationData_GetNetworkItemCount(I)I
    .locals 10
    .param p0, "affiliation_ID"    # I

    .prologue
    const/4 v9, 0x0

    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "count":I
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 394
    const-string v3, "MtvBMLManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteStationData_GetNetworkItemCount() :     affiliation_ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_0
    :try_start_0
    const-string v3, "/data/one-seg/bml.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sput-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 400
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "select count(*)  from dtvaffiliationbroadcaster where affiliationID=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 402
    .local v2, "mCursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 405
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 410
    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_2

    .line 420
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 421
    sput-object v9, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 427
    .end local v2    # "mCursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    const-string v3, "MtvBMLManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteStationData_GetNetworkItemCount() :    count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return v0

    .line 407
    .restart local v2    # "mCursor":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    const-string v3, "MtvBMLManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteStationData_GetNetworkItemCount() : mCursor.getCount() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    .end local v2    # "mCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v3, "MtvBMLManager"

    const-string v4, "deleteStationData_GetNetworkItemCount()  db file open failed"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 418
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_2

    .line 420
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 421
    sput-object v9, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 418
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_4

    .line 420
    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 421
    sput-object v9, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_4
    throw v3
.end method

.method public static deleteStationData_GetNetworkName(II)Ljava/lang/String;
    .locals 11
    .param p0, "affiliation_ID"    # I
    .param p1, "originalNetwork_index"    # I

    .prologue
    const/4 v10, 0x0

    .line 438
    const/4 v3, 0x0

    .line 439
    .local v3, "originalNetwork_ID":I
    const/4 v2, 0x0

    .line 443
    .local v2, "networkName":Ljava/lang/String;
    :try_start_0
    const-string v4, "/data/one-seg/bml.db"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sput-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 445
    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select originalNetworkID from dtvaffiliationbroadcaster where affiliationID=?     order by originalNetworkID limit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 447
    .local v1, "mCursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 449
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 452
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 454
    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_1

    .line 456
    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 457
    const/4 v4, 0x0

    sput-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 460
    :cond_1
    const-string v4, "/data/one-seg/bml.db"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sput-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 462
    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "select SI  from dtvaffiliationbroadcaster where affiliationID=? and originalNetworkID=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 464
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 466
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 469
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_3

    .line 478
    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 479
    sput-object v10, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 483
    .end local v1    # "mCursor":Landroid/database/Cursor;
    :cond_3
    :goto_0
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v4

    if-nez v4, :cond_4

    .line 484
    const-string v4, "MtvBMLManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteStationData_GetNetworkName() : networkName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_4
    return-object v2

    .line 471
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_3

    .line 478
    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 479
    sput-object v10, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 476
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_5

    .line 478
    sget-object v5, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 479
    sput-object v10, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_5
    throw v4
.end method

.method public static getAvailableCProBMInfo(I)Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;
    .locals 29
    .param p0, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "availableCProBMInfo":Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;
    const/4 v4, 0x0

    .line 234
    .local v4, "iItemSize":I
    const/4 v5, 0x0

    .line 235
    .local v5, "iTmpID":I
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v23

    if-nez v23, :cond_0

    .line 236
    const-string v23, "MtvBMLManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getAvailableCProBMInfo() : called. id = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    :try_start_0
    const-string v23, "/data/one-seg/bml.db"

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v23

    sput-object v23, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    sget-object v23, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v23, :cond_1

    .line 250
    const-string v23, "MtvBMLManager"

    const-string v24, "getAvailableCProBMInfo() : there is no     CProBMInfo"

    invoke-static/range {v23 .. v24}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v23, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 252
    const/16 v23, 0x0

    .line 324
    :goto_0
    return-object v23

    .line 242
    :catch_0
    move-exception v3

    .line 244
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    const-string v23, "MtvBMLManager"

    const-string v24, "getAvailableCProBMInfo() : CProBMInfo  data open failed"

    invoke-static/range {v23 .. v24}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/16 v23, 0x0

    goto :goto_0

    .line 255
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_1
    sget-object v23, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v24, "select rowid, * from dtvcprobminfo where id=?"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 257
    .local v22, "mCursor":Landroid/database/Cursor;
    const-string v23, "rowid"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 259
    .local v6, "index":I
    const-string v23, "id"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 260
    .local v15, "indexID":I
    const-string v23, "CproBMType"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 261
    .local v13, "indexCproBMType":I
    const-string v23, "title"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 262
    .local v20, "indexTitle":I
    const-string v23, "dstURI"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 263
    .local v14, "indexDstUri":I
    const-string v23, "originalNetworkID"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 264
    .local v16, "indexOriginalNetworkID":I
    const-string v23, "transportStreamID"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 265
    .local v21, "indexTransportStreamID":I
    const-string v23, "serviceID"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 266
    .local v19, "indexServiceID":I
    const-string v23, "affiliationID0"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 267
    .local v7, "indexAffiliationID0":I
    const-string v23, "affiliationID1"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 268
    .local v8, "indexAffiliationID1":I
    const-string v23, "affiliationID2"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 269
    .local v9, "indexAffiliationID2":I
    const-string v23, "affiliationID3"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 270
    .local v10, "indexAffiliationID3":I
    const-string v23, "affiliationID4"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 271
    .local v11, "indexAffiliationID4":I
    const-string v23, "affiliationID5"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 272
    .local v12, "indexAffiliationID5":I
    const-string v23, "outline"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 273
    .local v17, "indexOutline":I
    const-string v23, "reserved"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 275
    .local v18, "indexReserved":I
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 277
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 278
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v23

    if-nez v23, :cond_2

    .line 279
    const-string v23, "MtvBMLManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getAvailableCProBMInfo() : iItemSize = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_2
    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 283
    const-string v23, "MtvBMLManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getAvailableCProBMInfo() : data id = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    move/from16 v0, p0

    if-ne v5, v0, :cond_5

    .line 287
    const-string v23, "MtvBMLManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getAvailableCProBMInfo() : matching  data found. id = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .end local v2    # "availableCProBMInfo":Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;
    invoke-direct {v2}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;-><init>()V

    .line 291
    .restart local v2    # "availableCProBMInfo":Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->index:I

    .line 293
    iput v5, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->id:I

    .line 294
    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->CproBMType:I

    .line 295
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->title:Ljava/lang/String;

    .line 296
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->dstURI:Ljava/lang/String;

    .line 297
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->originalNetworkID:I

    .line 298
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->transportStreamID:I

    .line 299
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->serviceID:I

    .line 300
    iget-object v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->affiliationID:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    aput v25, v23, v24

    .line 301
    iget-object v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->affiliationID:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    aput v25, v23, v24

    .line 302
    iget-object v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->affiliationID:[I

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    aput v25, v23, v24

    .line 303
    iget-object v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->affiliationID:[I

    move-object/from16 v23, v0

    const/16 v24, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    aput v25, v23, v24

    .line 304
    iget-object v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->affiliationID:[I

    move-object/from16 v23, v0

    const/16 v24, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    aput v25, v23, v24

    .line 305
    iget-object v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->affiliationID:[I

    move-object/from16 v23, v0

    const/16 v24, 0x5

    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    aput v25, v23, v24

    .line 306
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->outline:Ljava/lang/String;

    .line 307
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->reserved:Ljava/lang/String;

    .line 308
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v23

    if-nez v23, :cond_3

    .line 309
    const-string v23, "MtvBMLManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getAvailableCProBMInfoAll()  Crop ID     : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->id:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_3
    const-string v23, "MtvBMLManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getAvailableCProBMInfoAll()  Crop index     : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->index:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->id:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->getValidDateCProBMInfo(I)Ljava/util/Date;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v2, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->validdate:Ljava/util/Date;

    .line 320
    :cond_4
    :goto_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 321
    sget-object v23, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 322
    const-string v23, "MtvBMLManager"

    const-string v24, "getAvailableCProBMInfo() : End"

    invoke-static/range {v23 .. v24}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v23, v2

    .line 324
    goto/16 :goto_0

    .line 317
    :cond_5
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-nez v23, :cond_2

    goto :goto_1
.end method

.method public static getAvailableCProBMInfoAll()[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 121
    const/16 v21, 0x0

    .line 122
    .local v21, "newCProBMInfo":Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;
    const/4 v2, 0x0

    .line 123
    .local v2, "availableCProBMInfoAll":[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;
    const/4 v4, 0x0

    .line 125
    .local v4, "iItemSize":I
    const-string v22, "MtvBMLManager"

    const-string v23, "getAvailableCProBMInfoAll() : called."

    invoke-static/range {v22 .. v23}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v22, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->vCProBMInfo:Ljava/util/Vector;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    if-eqz v22, :cond_0

    .line 129
    sget-object v22, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->vCProBMInfo:Ljava/util/Vector;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->clear()V

    .line 134
    :cond_0
    :try_start_0
    const-string v22, "/data/one-seg/bml.db"

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    sput-object v22, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    sget-object v22, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v22, :cond_1

    .line 144
    const-string v22, "MtvBMLManager"

    const-string v23, "getAvailableCProBMInfoAll() : there is no CProBMInfo"

    invoke-static/range {v22 .. v23}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v22, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 146
    const/16 v22, 0x0

    .line 222
    :goto_0
    return-object v22

    .line 136
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    const-string v22, "MtvBMLManager"

    const-string v23, "getAvailableCProBMInfoAll() : CProBMInfo data open failed"

    invoke-static/range {v22 .. v23}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/16 v22, 0x0

    goto :goto_0

    .line 149
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_1
    sget-object v22, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v23, "select rowid, * from dtvcprobminfo"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 155
    .local v20, "mCursor":Landroid/database/Cursor;
    const-string v22, "id"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 156
    .local v13, "indexID":I
    const-string v22, "CproBMType"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 157
    .local v11, "indexCproBMType":I
    const-string v22, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 158
    .local v18, "indexTitle":I
    const-string v22, "dstURI"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 159
    .local v12, "indexDstUri":I
    const-string v22, "originalNetworkID"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 160
    .local v14, "indexOriginalNetworkID":I
    const-string v22, "transportStreamID"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 161
    .local v19, "indexTransportStreamID":I
    const-string v22, "serviceID"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 162
    .local v17, "indexServiceID":I
    const-string v22, "affiliationID0"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 163
    .local v5, "indexAffiliationID0":I
    const-string v22, "affiliationID1"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 164
    .local v6, "indexAffiliationID1":I
    const-string v22, "affiliationID2"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 165
    .local v7, "indexAffiliationID2":I
    const-string v22, "affiliationID3"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 166
    .local v8, "indexAffiliationID3":I
    const-string v22, "affiliationID4"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 167
    .local v9, "indexAffiliationID4":I
    const-string v22, "affiliationID5"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 168
    .local v10, "indexAffiliationID5":I
    const-string v22, "outline"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 169
    .local v15, "indexOutline":I
    const-string v22, "reserved"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 171
    .local v16, "indexReserved":I
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 173
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 174
    const-string v22, "MtvBMLManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getAvailableCProBMInfoAll() : iItemSize = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v22, "MtvBMLManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getAvailableCProBMInfoAll() : iItemSize = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    new-instance v21, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .end local v21    # "newCProBMInfo":Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;
    invoke-direct/range {v21 .. v21}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;-><init>()V

    .line 181
    .restart local v21    # "newCProBMInfo":Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;
    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->id:I

    .line 182
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->CproBMType:I

    .line 183
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->title:Ljava/lang/String;

    .line 184
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->dstURI:Ljava/lang/String;

    .line 185
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->originalNetworkID:I

    .line 186
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->transportStreamID:I

    .line 187
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->serviceID:I

    .line 188
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->affiliationID:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    aput v24, v22, v23

    .line 189
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->affiliationID:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    aput v24, v22, v23

    .line 190
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->affiliationID:[I

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    aput v24, v22, v23

    .line 191
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->affiliationID:[I

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    aput v24, v22, v23

    .line 192
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->affiliationID:[I

    move-object/from16 v22, v0

    const/16 v23, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    aput v24, v22, v23

    .line 193
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->affiliationID:[I

    move-object/from16 v22, v0

    const/16 v23, 0x5

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    aput v24, v22, v23

    .line 194
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->outline:Ljava/lang/String;

    .line 195
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->reserved:Ljava/lang/String;

    .line 196
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v22

    if-nez v22, :cond_3

    .line 197
    const-string v22, "MtvBMLManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getAvailableCProBMInfoAll()   Crop ID  : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->id:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_3
    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->id:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->getValidDateCProBMInfo(I)Ljava/util/Date;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->validdate:Ljava/util/Date;

    .line 200
    sget-object v22, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->vCProBMInfo:Ljava/util/Vector;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-nez v22, :cond_2

    .line 206
    :cond_4
    new-array v2, v4, [Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 207
    sget-object v22, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->vCProBMInfo:Ljava/util/Vector;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_5

    .line 209
    const-string v22, "MtvBMLManager"

    const-string v23, "getAvailableCProBMInfoAll() : vCProBMInfo is not empty! so proceed copyInto()."

    invoke-static/range {v22 .. v23}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v22, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->vCProBMInfo:Ljava/util/Vector;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 218
    :goto_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 219
    sget-object v22, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 220
    const-string v22, "MtvBMLManager"

    const-string v23, "getAvailableCProBMInfoAll() : End"

    invoke-static/range {v22 .. v23}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v2

    .line 222
    goto/16 :goto_0

    .line 213
    :cond_5
    const-string v22, "MtvBMLManager"

    const-string v23, "getAvailableCProBMInfoAll() : vCProBMInfo is empty!"

    invoke-static/range {v22 .. v23}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getOriginalNetworkId(II)I
    .locals 10
    .param p0, "affiliation_id"    # I
    .param p1, "originalNetwork_index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 664
    const/4 v2, -0x1

    .line 666
    .local v2, "originalNetworkID":I
    const-string v3, "MtvBMLManager"

    const-string v4, "deleteStationData_DeleteNetwork() : called."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :try_start_0
    const-string v3, "/data/one-seg/bml.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sput-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 672
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select originalNetworkID from dtvaffiliationbroadcaster where affiliationID=? order by originalNetworkID limit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 673
    .local v1, "mCursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 675
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 677
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    .line 686
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 687
    sput-object v9, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 691
    .end local v1    # "mCursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v2

    .line 679
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    .line 686
    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 687
    sput-object v9, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 684
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_2

    .line 686
    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 687
    sput-object v9, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_2
    throw v3
.end method

.method private static getValidDateCProBMInfo(I)Ljava/util/Date;
    .locals 13
    .param p0, "index"    # I

    .prologue
    .line 67
    const-wide/16 v6, 0x0

    .local v6, "localtime":J
    const-wide/16 v8, 0x0

    .line 68
    .local v8, "uLoop":J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 69
    .local v5, "validityDate":Ljava/util/Date;
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v10

    if-nez v10, :cond_0

    .line 70
    const-string v10, "MtvBMLManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getValidDateCProBMInfo() : index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    const/4 v3, 0x0

    .line 75
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v10, "/data/one-seg/CproBmMng.dat"

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 78
    .local v0, "din":Ljava/io/DataInputStream;
    const-wide/16 v8, 0x0

    :goto_0
    int-to-long v10, p0

    cmp-long v10, v8, v10

    if-gez v10, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 80
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 78
    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 84
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    int-to-long v6, v10

    .line 86
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-gez v10, :cond_4

    .line 87
    const-wide/16 v6, 0x0

    .line 88
    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 96
    :goto_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    if-eqz v4, :cond_2

    .line 104
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    move-object v3, v4

    .line 111
    .end local v0    # "din":Ljava/io/DataInputStream;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :cond_3
    :goto_2
    return-object v5

    .line 92
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "din":Ljava/io/DataInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :cond_4
    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    .line 93
    :try_start_3
    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 98
    .end local v0    # "din":Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 99
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .local v2, "fe":Ljava/io/IOException;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    const-string v10, "MtvBMLManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getValidDateCProBMInfo() :   Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    if-eqz v3, :cond_3

    .line 104
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 105
    :catch_1
    move-exception v1

    .line 107
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 105
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fe":Ljava/io/IOException;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "din":Ljava/io/DataInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 107
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 109
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .line 102
    .end local v0    # "din":Ljava/io/DataInputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 103
    :goto_4
    if-eqz v3, :cond_5

    .line 104
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 108
    :cond_5
    :goto_5
    throw v10

    .line 105
    :catch_3
    move-exception v1

    .line 107
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_4

    .line 98
    :catch_4
    move-exception v2

    goto :goto_3
.end method
