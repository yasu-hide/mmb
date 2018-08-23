.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;
.super Ljava/lang/Object;
.source "MmbStBmlNvRamPersistentSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;
    }
.end annotation


# static fields
.field protected static final IS_THERE_TABLE:Ljava/lang/String; = "SELECT * FROM sqlite_master WHERE type = \'table\' AND name = ?;"


# instance fields
.field protected mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

.field protected mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 1
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 44
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    .line 62
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 67
    return-void
.end method


# virtual methods
.method public declared-synchronized checkWriteNvram(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;)Z
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;

    .prologue
    const/4 v0, 0x0

    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    if-nez v1, :cond_0

    .line 285
    const-string v1, "not notifyOnCreate() called."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :goto_0
    monitor-exit p0

    return v0

    .line 293
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;->checkWriteNvram(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 298
    .local v0, "ret":Z
    goto :goto_0

    .line 284
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clearNvram()V
    .locals 2

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v1, "not notifyOnCreate() called."

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 261
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;->clearNvram()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    monitor-exit p0

    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    .local v0, "ret":Landroid/content/Context;
    return-object v0
.end method

.method public declared-synchronized notifyOnCreate()V
    .locals 0

    .prologue
    .line 223
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyOnDestroy()V
    .locals 0

    .prologue
    .line 242
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyOnLoad()V
    .locals 9

    .prologue
    .line 104
    monitor-enter p0

    const/4 v3, 0x0

    .line 105
    .local v3, "wdatebase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 108
    .local v0, "cur":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 110
    :try_start_0
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "bml.db"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    .line 112
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 117
    if-eqz v3, :cond_0

    .line 118
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 122
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    if-nez v4, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "bml.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 125
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 126
    const-string v4, "DB delete Error."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :cond_1
    const/4 v3, 0x0

    .line 132
    :try_start_2
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "bml.db"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    .line 134
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    .line 139
    if-eqz v3, :cond_2

    .line 140
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 145
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_5

    .line 146
    const/4 v0, 0x0

    .line 147
    const/4 v3, 0x0

    .line 150
    :try_start_4
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 153
    const-string v4, "SELECT * FROM sqlite_master WHERE type = \'table\' AND name = ?;"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "nvramTbl"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 158
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 159
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    invoke-virtual {v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 164
    :cond_3
    if-eqz v0, :cond_4

    .line 165
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_4
    if-eqz v3, :cond_5

    .line 168
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 115
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 117
    if-eqz v3, :cond_0

    .line 118
    :try_start_7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 117
    :catchall_1
    move-exception v4

    if-eqz v3, :cond_6

    .line 118
    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 135
    .restart local v2    # "f":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 136
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_9
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 137
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 139
    if-eqz v3, :cond_2

    .line 140
    :try_start_a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v4

    if-eqz v3, :cond_7

    .line 140
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 161
    .end local v2    # "f":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 162
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 164
    if-eqz v0, :cond_8

    .line 165
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_8
    if-eqz v3, :cond_5

    .line 168
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    if-eqz v0, :cond_9

    .line 165
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_9
    if-eqz v3, :cond_a

    .line 168
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public declared-synchronized notifyOnUnload()V
    .locals 2

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 195
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    :cond_0
    monitor-exit p0

    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readNvram(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;)Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    if-nez v1, :cond_0

    .line 340
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v2, "not notifyOnCreate() called."

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 343
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;->readNvram(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;)Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 348
    .local v0, "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized writeNvram(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v1, "not notifyOnCreate() called."

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 318
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv$MmbNvRamDatabaseSv;->writeNvram(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    monitor-exit p0

    return-void
.end method
