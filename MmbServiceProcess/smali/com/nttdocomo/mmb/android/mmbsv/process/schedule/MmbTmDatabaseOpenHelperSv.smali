.class Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseOpenHelperSv;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MmbTmDatabaseOpenHelperSv.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 133
    const-string v0, "scheduleList.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 140
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "aDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 171
    :try_start_0
    const-string v0, "CREATE TABLE scheduleListTbl(_id INTEGER PRIMARY KEY NOT NULL,scheduleType INTEGER NOT NULL,triggerTime INTEGER NOT NULL,repeatFlag INTEGER NOT NULL,timerFinishFlag INTEGER NOT NULL,crid TEXT,history INTEGER,intentPackageName TEXT,intentClassName TEXT,reservedPackageName TEXT,reserveType INTEGER,contentTitle TEXT,contentStartTime INTEGER,contentEndTime INTEGER,contentPlayTime INTEGER,contentPlayDate INTEGER,contentMedia INTEGER,contentIndex TEXT,serviceId INTEGER,seriesId TEXT,work1 INTEGER,work2 INTEGER,work3 TEXT,timeStamp INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "aDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "aOldVersion"    # I
    .param p3, "aNewVersion"    # I

    .prologue
    .line 209
    return-void
.end method
