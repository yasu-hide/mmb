.class Lcom/samsung/sec/mtv/ui/TestMode/TestScansProvider$DBConstructor;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TestScansProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/TestMode/TestScansProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBConstructor"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const-string v0, "testscan_table.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 43
    const-string v0, "CREATE TABLE testscans (_id INTEGER PRIMARY KEY,scantime INTEGER,numchannels INTEGER,maxchanneltime INTEGER,minchanneltime INTEGER,unixtime INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 56
    const-string v0, "DROP TABLE IF EXISTS testscans"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/ui/TestMode/TestScansProvider$DBConstructor;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    return-void
.end method
