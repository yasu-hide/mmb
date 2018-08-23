.class public Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;
.super Ljava/lang/Object;
.source "MmbSlDataBaseControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbSlDatabaseOpenHelper;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    }
.end annotation


# static fields
.field private static context:Landroid/content/Context;

.field private static thisInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;


# instance fields
.field private sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

.field private sqlHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbSlDatabaseOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->thisInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->context:Landroid/content/Context;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbSlDatabaseOpenHelper;

    .line 94
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    .line 161
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;
    .locals 1
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 179
    sput-object p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->context:Landroid/content/Context;

    .line 183
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->thisInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    return-object v0
.end method


# virtual methods
.method closeManager()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 288
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbSlDatabaseOpenHelper;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbSlDatabaseOpenHelper;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbSlDatabaseOpenHelper;->close()V

    .line 293
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbSlDatabaseOpenHelper;

    .line 299
    :cond_1
    return-void
.end method

.method deleteBroadcasterData()V
    .locals 5

    .prologue
    .line 1210
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "serviceListBcTbl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    return-void

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "err":Ljava/lang/Exception;
    const-string v1, "Broadcasterdata not delete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1213
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v1
.end method

.method deleteNetworkData()V
    .locals 5

    .prologue
    .line 1182
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "serviceListNwTbl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    return-void

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "err":Ljava/lang/Exception;
    const-string v1, "Networkdata not delete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1185
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v1
.end method

.method deleteServiceData()V
    .locals 5

    .prologue
    .line 1238
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "serviceListSvTbl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    return-void

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    .local v0, "err":Ljava/lang/Exception;
    const-string v1, "Servicedata not delete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1241
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v1
.end method

.method getBroadcasterDataAll()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    const/4 v8, 0x0

    .line 586
    .local v8, "broadcasterdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    const/4 v10, 0x0

    .line 590
    .local v10, "cursol":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "serviceListBcTbl"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "networkId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "broadcasterId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "broadcasterName"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 595
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 630
    if-eqz v10, :cond_0

    .line 631
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v9, v8

    .line 638
    .end local v8    # "broadcasterdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    :goto_0
    return-object v9

    .line 600
    .restart local v8    # "broadcasterdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    :cond_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 601
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    .end local v8    # "broadcasterdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    .local v9, "broadcasterdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    const/4 v13, 0x0

    .local v13, "loopcnt":I
    :goto_1
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v13, v0, :cond_2

    .line 606
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;

    invoke-direct {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;-><init>()V

    .line 607
    .local v11, "datatemp":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->networkId:S

    .line 608
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->broadcasterId:S

    .line 609
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->broadcasterName:Ljava/lang/String;

    .line 610
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 612
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 603
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 630
    .end local v11    # "datatemp":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    :cond_2
    if-eqz v10, :cond_3

    .line 631
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v9

    .line 638
    .end local v9    # "broadcasterdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    .restart local v8    # "broadcasterdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    goto :goto_0

    .line 617
    .end local v13    # "loopcnt":I
    :catch_0
    move-exception v12

    .line 619
    .local v12, "err":Ljava/lang/NullPointerException;
    :goto_2
    if-nez v10, :cond_5

    .line 621
    :try_start_3
    const-string v0, "cursol error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    :goto_3
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 630
    .end local v12    # "err":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v10, :cond_4

    .line 631
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 624
    .restart local v12    # "err":Ljava/lang/NullPointerException;
    :cond_5
    :try_start_4
    const-string v0, "DB error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 630
    .end local v8    # "broadcasterdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    .end local v12    # "err":Ljava/lang/NullPointerException;
    .restart local v9    # "broadcasterdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    .restart local v13    # "loopcnt":I
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9    # "broadcasterdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    .restart local v8    # "broadcasterdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    goto :goto_4

    .line 617
    .end local v8    # "broadcasterdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    .restart local v9    # "broadcasterdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    :catch_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "broadcasterdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    .restart local v8    # "broadcasterdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    goto :goto_2
.end method

.method getBroadcasterName(S)Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    .locals 12
    .param p1, "aBroadcasterId"    # S

    .prologue
    .line 974
    const/4 v8, 0x0

    .line 975
    .local v8, "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    const/4 v10, 0x0

    .line 979
    .local v10, "cursol":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "serviceListBcTbl"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "broadcasterName"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcasterId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 985
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1012
    if-eqz v10, :cond_0

    .line 1013
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v9, v8

    .line 1020
    .end local v8    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    :goto_0
    return-object v9

    .line 990
    .restart local v8    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    :cond_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 991
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;

    invoke-direct {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;-><init>()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    .end local v8    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    .local v9, "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->broadcasterName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1012
    if-eqz v10, :cond_2

    .line 1013
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v8, v9

    .line 1020
    .end local v9    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    .restart local v8    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    goto :goto_0

    .line 994
    :catch_0
    move-exception v11

    .line 996
    .local v11, "err":Ljava/lang/NullPointerException;
    :goto_1
    if-nez v10, :cond_4

    .line 998
    :try_start_3
    const-string v0, "cursol error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1003
    :goto_2
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1012
    .end local v11    # "err":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v10, :cond_3

    .line 1013
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1001
    .restart local v11    # "err":Ljava/lang/NullPointerException;
    :cond_4
    :try_start_4
    const-string v0, "DB error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1005
    .end local v11    # "err":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v11

    .line 1007
    .local v11, "err":Landroid/database/SQLException;
    :goto_4
    const-string v0, "query error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1008
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1012
    .end local v8    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    .end local v11    # "err":Landroid/database/SQLException;
    .restart local v9    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    .restart local v8    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    goto :goto_3

    .line 1005
    .end local v8    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    .restart local v9    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    :catch_2
    move-exception v11

    move-object v8, v9

    .end local v9    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    .restart local v8    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    goto :goto_4

    .line 994
    .end local v8    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    .restart local v9    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    :catch_3
    move-exception v11

    move-object v8, v9

    .end local v9    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    .restart local v8    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    goto :goto_1
.end method

.method getNetworkDataAll()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .locals 12

    .prologue
    .line 525
    const/4 v10, 0x0

    .line 526
    .local v10, "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    const/4 v8, 0x0

    .line 530
    .local v8, "cursol":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "serviceListNwTbl"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "networkId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "networkName"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 534
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 537
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;

    invoke-direct {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;-><init>()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    .end local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .local v11, "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;->networkId:S

    .line 539
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;->networkName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v11

    .line 555
    .end local v11    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .restart local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    :cond_0
    if-eqz v8, :cond_1

    .line 556
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 563
    :cond_1
    return-object v10

    .line 542
    :catch_0
    move-exception v9

    .line 544
    .local v9, "err":Ljava/lang/NullPointerException;
    :goto_0
    if-nez v8, :cond_3

    .line 546
    :try_start_2
    const-string v0, "cursol error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    :goto_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 555
    .end local v9    # "err":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_2

    .line 556
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 549
    .restart local v9    # "err":Ljava/lang/NullPointerException;
    :cond_3
    :try_start_3
    const-string v0, "DB error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 555
    .end local v9    # "err":Ljava/lang/NullPointerException;
    .end local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .restart local v11    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .restart local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    goto :goto_2

    .line 542
    .end local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .restart local v11    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    :catch_1
    move-exception v9

    move-object v10, v11

    .end local v11    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .restart local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    goto :goto_0
.end method

.method getNetworkName(S)Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .locals 12
    .param p1, "aNetworkId"    # S

    .prologue
    .line 904
    const/4 v10, 0x0

    .line 905
    .local v10, "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    const/4 v8, 0x0

    .line 909
    .local v8, "cursol":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "serviceListNwTbl"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "networkName"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 915
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 942
    if-eqz v8, :cond_0

    .line 943
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v11, v10

    .line 950
    .end local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    :goto_0
    return-object v11

    .line 920
    .restart local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 921
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;

    invoke-direct {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;-><init>()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    .end local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .local v11, "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;->networkName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 942
    if-eqz v8, :cond_2

    .line 943
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v10, v11

    .line 950
    .end local v11    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .restart local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    goto :goto_0

    .line 924
    :catch_0
    move-exception v9

    .line 926
    .local v9, "err":Ljava/lang/NullPointerException;
    :goto_1
    if-nez v8, :cond_4

    .line 928
    :try_start_3
    const-string v0, "cursol error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    :goto_2
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 942
    .end local v9    # "err":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_3

    .line 943
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 931
    .restart local v9    # "err":Ljava/lang/NullPointerException;
    :cond_4
    :try_start_4
    const-string v0, "DB error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 935
    .end local v9    # "err":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v9

    .line 937
    .local v9, "err":Landroid/database/SQLException;
    :goto_4
    const-string v0, "query error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 938
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 942
    .end local v9    # "err":Landroid/database/SQLException;
    .end local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .restart local v11    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .restart local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    goto :goto_3

    .line 935
    .end local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .restart local v11    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    :catch_2
    move-exception v9

    move-object v10, v11

    .end local v11    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .restart local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    goto :goto_4

    .line 924
    .end local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .restart local v11    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    :catch_3
    move-exception v9

    move-object v10, v11

    .end local v11    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .restart local v10    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    goto :goto_1
.end method

.method getServiceDataSelect(S)Ljava/util/List;
    .locals 14
    .param p1, "aBroadcasterId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 816
    const/4 v12, 0x0

    .line 817
    .local v12, "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    const/4 v8, 0x0

    .line 821
    .local v8, "cursol":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "serviceListSvTbl"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "broadcasterId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "serviceId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "serviceType"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "serviceName"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "serviceProviderName"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "partialReception"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "transportStreamId"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcasterId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 830
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 873
    if-eqz v8, :cond_0

    .line 874
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v13, v12

    .line 881
    .end local v12    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    :goto_0
    return-object v13

    .line 835
    .restart local v12    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 836
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    .end local v12    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    .local v13, "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    const/4 v11, 0x0

    .local v11, "loopcnt":I
    :goto_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v11, v0, :cond_2

    .line 841
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;

    invoke-direct {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;-><init>()V

    .line 842
    .local v9, "datatemp":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->broadcasterId:S

    .line 843
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceId:I

    .line 844
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceType:S

    .line 845
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceName:Ljava/lang/String;

    .line 846
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceProviderName:Ljava/lang/String;

    .line 847
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->partialReception:I

    .line 848
    const/4 v0, 0x6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->transportStreamId:I

    .line 849
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 851
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 838
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 873
    .end local v9    # "datatemp":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    :cond_2
    if-eqz v8, :cond_3

    .line 874
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v12, v13

    .line 881
    .end local v13    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    .restart local v12    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    goto :goto_0

    .line 855
    .end local v11    # "loopcnt":I
    :catch_0
    move-exception v10

    .line 857
    .local v10, "err":Ljava/lang/NullPointerException;
    :goto_2
    if-nez v8, :cond_5

    .line 859
    :try_start_3
    const-string v0, "cursol error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 864
    :goto_3
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 873
    .end local v10    # "err":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_4

    .line 874
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 862
    .restart local v10    # "err":Ljava/lang/NullPointerException;
    :cond_5
    :try_start_4
    const-string v0, "DB error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 866
    .end local v10    # "err":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v10

    .line 868
    .local v10, "err":Landroid/database/SQLException;
    :goto_5
    const-string v0, "query error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 869
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 873
    .end local v10    # "err":Landroid/database/SQLException;
    .end local v12    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    .restart local v11    # "loopcnt":I
    .restart local v13    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    :catchall_1
    move-exception v0

    move-object v12, v13

    .end local v13    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    .restart local v12    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    goto :goto_4

    .line 866
    .end local v12    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    .restart local v13    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    :catch_2
    move-exception v10

    move-object v12, v13

    .end local v13    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    .restart local v12    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    goto :goto_5

    .line 855
    .end local v12    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    .restart local v13    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    :catch_3
    move-exception v10

    move-object v12, v13

    .end local v13    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    .restart local v12    # "servicedata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    goto :goto_2
.end method

.method getServiceProviderName(I)Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    .locals 12
    .param p1, "aServiceId"    # I

    .prologue
    .line 1043
    const/4 v10, 0x0

    .line 1044
    .local v10, "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    const/4 v8, 0x0

    .line 1048
    .local v8, "cursol":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "serviceListSvTbl"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "serviceName"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "serviceProviderName"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1054
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1082
    if-eqz v8, :cond_0

    .line 1083
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v11, v10

    .line 1090
    .end local v10    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    :goto_0
    return-object v11

    .line 1059
    .restart local v10    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1060
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;

    invoke-direct {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;-><init>()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1061
    .end local v10    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    .local v11, "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceName:Ljava/lang/String;

    .line 1062
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceProviderName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1082
    if-eqz v8, :cond_2

    .line 1083
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v10, v11

    .line 1090
    .end local v11    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    .restart local v10    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    goto :goto_0

    .line 1064
    :catch_0
    move-exception v9

    .line 1066
    .local v9, "err":Ljava/lang/NullPointerException;
    :goto_1
    if-nez v8, :cond_4

    .line 1068
    :try_start_3
    const-string v0, "cursol error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    :goto_2
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1082
    .end local v9    # "err":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_3

    .line 1083
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1071
    .restart local v9    # "err":Ljava/lang/NullPointerException;
    :cond_4
    :try_start_4
    const-string v0, "DB error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1075
    .end local v9    # "err":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v9

    .line 1077
    .local v9, "err":Landroid/database/SQLException;
    :goto_4
    const-string v0, "query error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1082
    .end local v9    # "err":Landroid/database/SQLException;
    .end local v10    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    .restart local v11    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    .restart local v10    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    goto :goto_3

    .line 1075
    .end local v10    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    .restart local v11    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    :catch_2
    move-exception v9

    move-object v10, v11

    .end local v11    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    .restart local v10    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    goto :goto_4

    .line 1064
    .end local v10    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    .restart local v11    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    :catch_3
    move-exception v9

    move-object v10, v11

    .end local v11    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    .restart local v10    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    goto :goto_1
.end method

.method getTransportStreamId(I)I
    .locals 12
    .param p1, "aServiceId"    # I

    .prologue
    .line 1113
    const/4 v10, 0x0

    .line 1114
    .local v10, "tsid":I
    const/4 v8, 0x0

    .line 1118
    .local v8, "cursol":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "serviceListSvTbl"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "transportStreamId"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1124
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1153
    if-eqz v8, :cond_0

    .line 1154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move v11, v10

    .line 1161
    .end local v10    # "tsid":I
    .local v11, "tsid":I
    :goto_0
    return v11

    .line 1132
    .end local v11    # "tsid":I
    .restart local v10    # "tsid":I
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1133
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 1153
    if-eqz v8, :cond_2

    .line 1154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move v11, v10

    .line 1161
    .end local v10    # "tsid":I
    .restart local v11    # "tsid":I
    goto :goto_0

    .line 1135
    .end local v11    # "tsid":I
    .restart local v10    # "tsid":I
    :catch_0
    move-exception v9

    .line 1137
    .local v9, "err":Ljava/lang/NullPointerException;
    if-nez v8, :cond_4

    .line 1139
    :try_start_2
    const-string v0, "cursol error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1144
    :goto_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1153
    .end local v9    # "err":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1142
    .restart local v9    # "err":Ljava/lang/NullPointerException;
    :cond_4
    :try_start_3
    const-string v0, "DB error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1146
    .end local v9    # "err":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v9

    .line 1148
    .local v9, "err":Landroid/database/SQLException;
    const-string v0, "query error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method initController()V
    .locals 6

    .prologue
    .line 203
    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbSlDatabaseOpenHelper;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->context:Landroid/content/Context;

    const-string v3, "serviceList.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbSlDatabaseOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbSlDatabaseOpenHelper;

    .line 210
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlHelperInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbSlDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbSlDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 214
    .local v0, "err":Ljava/lang/NullPointerException;
    const-string v1, "get instance error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v1
.end method

.method initDataBase()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->closeManager()V

    .line 245
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->context:Landroid/content/Context;

    const-string v3, "serviceList.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 248
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->initController()V

    .line 267
    return-void

    .line 250
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "err":Ljava/lang/SecurityException;
    const-string v2, "database file not delete"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 255
    .end local v0    # "err":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 257
    .local v0, "err":Ljava/lang/NullPointerException;
    const-string v2, "instance get error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2
.end method

.method saveBroadCasterData(Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;)V
    .locals 7
    .param p1, "aBroadcasterData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;

    .prologue
    .line 386
    if-nez p1, :cond_0

    .line 387
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 391
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 393
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 394
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "networkId"

    iget-short v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->networkId:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 395
    const-string v4, "broadcasterId"

    iget-short v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->broadcasterId:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 396
    const-string v4, "broadcasterName"

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->broadcasterName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "serviceListBcTbl"

    const-string v6, ""

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 401
    .local v2, "raw":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 402
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_1

    .line 426
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 433
    :cond_1
    return-void

    .line 404
    :cond_2
    :try_start_1
    const-string v4, "database insert error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "raw":J
    :catch_0
    move-exception v0

    .line 410
    .local v0, "err":Landroid/database/SQLException;
    :try_start_2
    const-string v4, "database insert error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    .end local v0    # "err":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_3

    .line 426
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v4

    .line 413
    :catch_1
    move-exception v0

    .line 415
    .local v0, "err":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v4, "database IllegalStateException"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4

    .line 418
    .end local v0    # "err":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 420
    .local v0, "err":Ljava/lang/NullPointerException;
    const-string v4, "get instance error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method saveNetworkData(Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;)V
    .locals 7
    .param p1, "aNetworkData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;

    .prologue
    .line 319
    if-nez p1, :cond_0

    .line 320
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 324
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 326
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 327
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "networkId"

    iget-short v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;->networkId:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 328
    const-string v4, "networkName"

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;->networkName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "serviceListNwTbl"

    const-string v6, ""

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 333
    .local v2, "raw":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 334
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_1

    .line 358
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 365
    :cond_1
    return-void

    .line 336
    :cond_2
    :try_start_1
    const-string v4, "database insert error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "raw":J
    :catch_0
    move-exception v0

    .line 342
    .local v0, "err":Landroid/database/SQLException;
    :try_start_2
    const-string v4, "DB error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    .end local v0    # "err":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_3

    .line 358
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v4

    .line 345
    :catch_1
    move-exception v0

    .line 347
    .local v0, "err":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v4, "database IllegalStateException"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4

    .line 350
    .end local v0    # "err":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 352
    .local v0, "err":Ljava/lang/NullPointerException;
    const-string v4, "get instance error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method saveServiceData(Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;)V
    .locals 7
    .param p1, "aServiceData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;

    .prologue
    .line 454
    if-nez p1, :cond_0

    .line 455
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 459
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 461
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 462
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "broadcasterId"

    iget-short v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->broadcasterId:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 463
    const-string v4, "serviceId"

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    const-string v4, "serviceType"

    iget-short v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceType:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 465
    const-string v4, "serviceName"

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v4, "serviceProviderName"

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceProviderName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v4, "partialReception"

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->partialReception:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 468
    const-string v4, "transportStreamId"

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->transportStreamId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 471
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "serviceListSvTbl"

    const-string v6, ""

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 473
    .local v2, "raw":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 474
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_1

    .line 498
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 505
    :cond_1
    return-void

    .line 476
    :cond_2
    :try_start_1
    const-string v4, "database insert error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "raw":J
    :catch_0
    move-exception v0

    .line 482
    .local v0, "err":Landroid/database/SQLException;
    :try_start_2
    const-string v4, "database insert error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    .end local v0    # "err":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_3

    .line 498
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->sqlDBInstance:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v4

    .line 485
    :catch_1
    move-exception v0

    .line 487
    .local v0, "err":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v4, "database IllegalStateException"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4

    .line 490
    .end local v0    # "err":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 492
    .local v0, "err":Ljava/lang/NullPointerException;
    const-string v4, "get instance error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
