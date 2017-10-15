.class public Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MtvProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/provider/MtvProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final CREATE_TABLE_CHANNELS:Ljava/lang/String; = "CREATE TABLE channels (_id INTEGER PRIMARY KEY,ch_vch INTEGER,ch_pch INTEGER DEFAULT -1,ch_fav INTEGER DEFAULT 0,ch_avlb INTEGER DEFAULT 0,ch_name TEXT,ch_slot INTEGER,ch_svcid1 INTEGER  DEFAULT -1,ch_svcid2 INTEGER  DEFAULT -1,srv_svcid1 INTEGER DEFAULT 0,srv_multichannel INTEGER DEFAULT 0,srv_svcname1 TEXT);"

.field private static final CREATE_TABLE_PROGRAMS:Ljava/lang/String; = "CREATE TABLE programs (_id INTEGER PRIMARY KEY,epg_vch INTEGER,epg_pch INTEGER,epg_plock INTEGER,epg_stime INTEGER,epg_etime INTEGER,epg_name TEXT,epg_detail TEXT);"

.field private static final CREATE_TABLE_RESERVATIONS:Ljava/lang/String; = "CREATE TABLE reservations (_id INTEGER PRIMARY KEY,epg_vch INTEGER,epg_pch INTEGER,epg_plock INTEGER,epg_stime INTEGER,epg_etime INTEGER,epg_name TEXT,epg_detail TEXT,egp_type INTEGER,egp_status INTEGER,egp_serviceid INTEGER);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "mtv.db"

.field private static final DATABASE_VERSION:I = 0x9

.field private static final TAG:Ljava/lang/String; = "DatabaseHelper"

.field private static mDatabaseHelperInstance:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->mDatabaseHelperInstance:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const-string v0, "mtv.db"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 110
    invoke-static {p1}, Lcom/samsung/sec/mtv/provider/MtvProvider;->access$002(Landroid/content/Context;)Landroid/content/Context;

    .line 111
    return-void
.end method

.method private createDefaultContents(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 238
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvArea;

    const/4 v2, -0x1

    const-string v3, "Empty"

    invoke-direct {v0, v2, v3}, Lcom/samsung/sec/mtv/provider/MtvArea;-><init>(ILjava/lang/String;)V

    .line 239
    .local v0, "area":Lcom/samsung/sec/mtv/provider/MtvArea;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 241
    const-string v2, "areas"

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvArea;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->mDatabaseHelperInstance:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->mDatabaseHelperInstance:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    .line 116
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->mDatabaseHelperInstance:Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 121
    const-string v0, "DatabaseHelper"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "CREATE TABLE areas (_id INTEGER PRIMARY KEY,area_id INTEGER,area_name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    const-string v0, "CREATE TABLE channels (_id INTEGER PRIMARY KEY,ch_vch INTEGER,ch_pch INTEGER DEFAULT -1,ch_fav INTEGER DEFAULT 0,ch_avlb INTEGER DEFAULT 0,ch_name TEXT,ch_slot INTEGER,ch_svcid1 INTEGER  DEFAULT -1,ch_svcid2 INTEGER  DEFAULT -1,srv_svcid1 INTEGER DEFAULT 0,srv_multichannel INTEGER DEFAULT 0,srv_svcname1 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    const-string v0, "CREATE TABLE programs (_id INTEGER PRIMARY KEY,epg_vch INTEGER,epg_pch INTEGER,epg_plock INTEGER,epg_stime INTEGER,epg_etime INTEGER,epg_name TEXT,epg_detail TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    const-string v0, "CREATE TABLE reservations (_id INTEGER PRIMARY KEY,epg_vch INTEGER,epg_pch INTEGER,epg_plock INTEGER,epg_stime INTEGER,epg_etime INTEGER,epg_name TEXT,epg_detail TEXT,egp_type INTEGER,egp_status INTEGER,egp_serviceid INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->createDefaultContents(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 142
    const-string v5, "DatabaseHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpgrade oldVersion = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newVersion = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/16 v5, 0x9

    if-ne p3, v5, :cond_1

    .line 156
    :try_start_0
    const-string v1, "ALTER TABLE channels ADD COLUMN srv_svcid1 INTEGER DEFAULT 0;"

    .line 159
    .local v1, "ADD_COLUMN_SERVICE_ID_TO_CHANNELS":Ljava/lang/String;
    const-string v5, "ALTER TABLE channels ADD COLUMN srv_svcid1 INTEGER DEFAULT 0;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "ADD_COLUMN_SERVICE_ID_TO_CHANNELS":Ljava/lang/String;
    :goto_0
    :try_start_1
    const-string v0, "ALTER TABLE channels ADD COLUMN srv_multichannel INTEGER DEFAULT 0;"

    .line 168
    .local v0, "ADD_COLUMN_MULTICH_NUM_TO_CHANNELS":Ljava/lang/String;
    const-string v5, "ALTER TABLE channels ADD COLUMN srv_multichannel INTEGER DEFAULT 0;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    .end local v0    # "ADD_COLUMN_MULTICH_NUM_TO_CHANNELS":Ljava/lang/String;
    :goto_1
    :try_start_2
    const-string v2, "ALTER TABLE channels ADD COLUMN srv_svcname1 TEXT DEFAULT \' \';"

    .line 176
    .local v2, "ADD_COLUMN_SERVICE_NAME_TO_CHANNELS":Ljava/lang/String;
    const-string v5, "ALTER TABLE channels ADD COLUMN srv_svcname1 TEXT DEFAULT \' \';"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 182
    .end local v2    # "ADD_COLUMN_SERVICE_NAME_TO_CHANNELS":Ljava/lang/String;
    :goto_2
    :try_start_3
    const-string v3, "UPDATE reservations SET egp_serviceid= 0;"

    .line 185
    .local v3, "UPDATE_COLUMN_SERVICE_ID_TO_RESERVATIONS":Ljava/lang/String;
    const-string v5, "UPDATE reservations SET egp_serviceid= 0;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 201
    .end local v3    # "UPDATE_COLUMN_SERVICE_ID_TO_RESERVATIONS":Ljava/lang/String;
    :cond_0
    :goto_3
    return-void

    .line 160
    :catch_0
    move-exception v4

    .line 161
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "DatabaseHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpgrade srv_svcid1 SQLiteException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v4

    .line 170
    .restart local v4    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "DatabaseHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpgrade srv_multichannel SQLiteException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 177
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v4

    .line 178
    .restart local v4    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "DatabaseHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpgrade srv_svcid1 SQLiteException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 187
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v4

    .line 189
    .restart local v4    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "DatabaseHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpgrade EPG_SERVICEID SQLiteException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 193
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_1
    if-eq p2, p3, :cond_0

    .line 195
    const-string v5, "DROP TABLE IF EXISTS areas"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    const-string v5, "DROP TABLE IF EXISTS channels"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    const-string v5, "DROP TABLE IF EXISTS programs"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    const-string v5, "DROP TABLE IF EXISTS reservations"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_3
.end method
