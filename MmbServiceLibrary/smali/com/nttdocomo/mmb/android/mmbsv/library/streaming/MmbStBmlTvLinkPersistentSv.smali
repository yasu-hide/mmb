.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;
.super Ljava/lang/Object;
.source "MmbStBmlTvLinkPersistentSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;
    }
.end annotation


# static fields
.field protected static final IS_THERE_TABLE:Ljava/lang/String; = "SELECT * FROM sqlite_master WHERE type = \'table\' AND name = ?;"


# instance fields
.field protected mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

.field protected mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 1
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 47
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    .line 65
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;)J
    .locals 2
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->getCurrentAribDateInAddTvLink()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;)J
    .locals 2
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->getCurrentAribDateInGetDeleteCandidate()J

    move-result-wide v0

    return-wide v0
.end method

.method private getAribDate(Ljava/util/Date;)J
    .locals 5
    .param p1, "aDate"    # Ljava/util/Date;

    .prologue
    .line 367
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmm"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 371
    .local v2, "simpledateformat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "tmp":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 377
    .local v0, "ret":J
    return-wide v0
.end method

.method private getCurrentAribDateInAddTvLink()J
    .locals 3

    .prologue
    .line 394
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->getAribDate(Ljava/util/Date;)J

    move-result-wide v0

    .line 399
    .local v0, "ret":J
    return-wide v0
.end method

.method private getCurrentAribDateInGetDeleteCandidate()J
    .locals 3

    .prologue
    .line 416
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->getAribDate(Ljava/util/Date;)J

    move-result-wide v0

    .line 421
    .local v0, "ret":J
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized addTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 2
    .param p1, "aLink"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

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
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->addTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    monitor-exit p0

    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, "ret":Landroid/content/Context;
    return-object v0
.end method

.method public declared-synchronized getDeleteCandidate()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .locals 3

    .prologue
    .line 287
    monitor-enter p0

    const/4 v0, 0x0

    .line 289
    .local v0, "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    if-nez v1, :cond_0

    .line 290
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v2, "not notifyOnCreate() called."

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 293
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->getDeleteCandidate()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 298
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getTvLink()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    if-nez v1, :cond_0

    .line 264
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v2, "not notifyOnCreate() called."

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 267
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->getTvLink()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 272
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized notifyOnCreate()V
    .locals 0

    .prologue
    .line 229
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyOnDestroy()V
    .locals 0

    .prologue
    .line 247
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyOnLoad()V
    .locals 9

    .prologue
    .line 107
    monitor-enter p0

    const/4 v3, 0x0

    .line 108
    .local v3, "wdatebase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 111
    .local v0, "cur":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 113
    :try_start_0
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "bml.db"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    .line 115
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    invoke-virtual {v4, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->setParent(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;)V

    .line 116
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 121
    if-eqz v3, :cond_0

    .line 122
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 126
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    if-nez v4, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "bml.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 129
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 130
    const-string v4, "DB delete Error."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :cond_1
    const/4 v3, 0x0

    .line 136
    :try_start_2
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "bml.db"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    .line 138
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    invoke-virtual {v4, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->setParent(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;)V

    .line 139
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    .line 144
    if-eqz v3, :cond_2

    .line 145
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 151
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_5

    .line 152
    const/4 v0, 0x0

    .line 153
    const/4 v3, 0x0

    .line 156
    :try_start_4
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 159
    const-string v4, "SELECT * FROM sqlite_master WHERE type = \'table\' AND name = ?;"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "tvlinkTbl"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 165
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    invoke-virtual {v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 171
    :cond_3
    if-eqz v0, :cond_4

    .line 172
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_4
    if-eqz v3, :cond_5

    .line 175
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 183
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 119
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 121
    if-eqz v3, :cond_0

    .line 122
    :try_start_7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 121
    :catchall_1
    move-exception v4

    if-eqz v3, :cond_6

    .line 122
    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 140
    .restart local v2    # "f":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 141
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_9
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 142
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 144
    if-eqz v3, :cond_2

    .line 145
    :try_start_a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v4

    if-eqz v3, :cond_7

    .line 145
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 168
    .end local v2    # "f":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 169
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 171
    if-eqz v0, :cond_8

    .line 172
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_8
    if-eqz v3, :cond_5

    .line 175
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 171
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    if-eqz v0, :cond_9

    .line 172
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_9
    if-eqz v3, :cond_a

    .line 175
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public declared-synchronized notifyOnUnload()V
    .locals 2

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 201
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    :cond_0
    monitor-exit p0

    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 2
    .param p1, "aLink"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v1, "not notifyOnCreate() called."

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 344
    :cond_0
    if-eqz p1, :cond_1

    .line 345
    :try_start_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->removeTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :goto_0
    monitor-exit p0

    return-void

    .line 347
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->removeTvLinkAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
