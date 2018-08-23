.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MmbStBmlTvLinkPersistentSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MmbTvLinkDatabaseSv"
.end annotation


# static fields
.field private static final ALL_COLUMNS_AND_ROWID:[Ljava/lang/String;

.field public static final COL_MMB_BM_TYPE:Ljava/lang/String; = "xproBMType"

.field public static final COL_MMB_BROADCASTID:Ljava/lang/String; = "broadcasterId"

.field public static final COL_MMB_EXPIRE:Ljava/lang/String; = "expire"

.field public static final COL_MMB_OUTLINE:Ljava/lang/String; = "outline"

.field public static final COL_MMB_ROWID:Ljava/lang/String; = "rowid"

.field public static final COL_MMB_SERVICEID:Ljava/lang/String; = "serviceId"

.field public static final COL_MMB_SETTIME:Ljava/lang/String; = "setTime"

.field public static final COL_MMB_TITLE:Ljava/lang/String; = "title"

.field public static final COL_MMB_URI:Ljava/lang/String; = "dstUrl"

.field public static final DATA_BASE_FILE:Ljava/lang/String; = "bml.db"

.field public static final DEFAULT_TVLINK_COUNT_MAX:I = 0x32

.field public static final MMB_OUTLINE_MAX_LENGTH:I = 0x82

.field public static final MMB_TITLE_MAX_LENGTH:I = 0x28

.field public static final MMB_URI_MAX_LENGTH:I = 0x3c

.field private static final SQL_CREATE_TVLINK_TBL:Ljava/lang/String; = "CREATE TABLE tvlinkTbl ( title text not null,  dstUrl text not null,  outline text not null,  xproBMType integer not null, expire integer not null, serviceId integer not null, broadcasterId integer not null, setTime integer not null)"

.field public static final TABLE_NAME:Ljava/lang/String; = "tvlinkTbl"


# instance fields
.field private mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

.field private tvLinkCountMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 523
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rowid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dstUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "outline"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "xproBMType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "expire"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "serviceId"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "broadcasterId"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "setTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->ALL_COLUMNS_AND_ROWID:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "aFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "aVersion"    # I

    .prologue
    .line 558
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 537
    const/16 v0, 0x32

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->tvLinkCountMax:I

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    .line 565
    return-void
.end method

.method private deleteCandidate()V
    .locals 2

    .prologue
    .line 1039
    const/4 v1, 0x0

    .line 1042
    .local v1, "removeitem":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    :goto_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->getDeleteCandidate()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    move-result-object v1

    .line 1043
    if-nez v1, :cond_0

    .line 1056
    :goto_1
    return-void

    .line 1047
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->removeTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private getCurrentAribDateInAddTvLink()J
    .locals 3

    .prologue
    .line 729
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;)J

    move-result-wide v0

    .line 734
    .local v0, "ret":J
    return-wide v0
.end method

.method private getCurrentAribDateInGetDeleteCandidate()J
    .locals 3

    .prologue
    .line 752
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;)J

    move-result-wide v0

    .line 757
    .local v0, "ret":J
    return-wide v0
.end method

.method private setMemberCursor2TvLink(Landroid/database/Cursor;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 2
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .param p2, "aLink"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    .line 668
    const-string v0, "rowid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbRowId:J

    .line 669
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbTitle:Ljava/lang/String;

    .line 670
    const-string v0, "dstUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbUri:Ljava/lang/String;

    .line 671
    const-string v0, "outline"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbOutline:Ljava/lang/String;

    .line 672
    const-string v0, "xproBMType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbBmType:I

    .line 674
    const-string v0, "expire"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbExpire:J

    .line 675
    const-string v0, "serviceId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbServiceId:I

    .line 676
    const-string v0, "broadcasterId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbBroadcasterId:I

    .line 681
    return-void
.end method

.method private setMemberTvLink2ConstantValues(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;JLandroid/content/ContentValues;)V
    .locals 4
    .param p1, "aInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .param p2, "aSetTime"    # J
    .param p4, "aInsert"    # Landroid/content/ContentValues;

    .prologue
    .line 697
    const-string v0, "title"

    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbTitle:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v0, "dstUrl"

    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbUri:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v0, "outline"

    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbOutline:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v0, "xproBMType"

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbBmType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 702
    const-string v0, "expire"

    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbExpire:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 703
    const-string v0, "serviceId"

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbServiceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 704
    const-string v0, "broadcasterId"

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbBroadcasterId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 707
    const-string v0, "setTime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 712
    return-void
.end method


# virtual methods
.method public addTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 7
    .param p1, "aInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    .line 1073
    const/4 v4, 0x0

    .line 1076
    .local v4, "wdatabase":Landroid/database/sqlite/SQLiteDatabase;
    if-nez p1, :cond_0

    .line 1077
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v6, "aInfo is null."

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1081
    :cond_0
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbTitle:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1082
    const-string v5, ""

    iput-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbTitle:Ljava/lang/String;

    .line 1084
    :cond_1
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbUri:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 1085
    const-string v5, ""

    iput-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbUri:Ljava/lang/String;

    .line 1087
    :cond_2
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbOutline:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 1088
    const-string v5, ""

    iput-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbOutline:Ljava/lang/String;

    .line 1092
    :cond_3
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x28

    if-le v5, v6, :cond_4

    .line 1093
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v6, " mmbTitle is too long."

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1095
    :cond_4
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbUri:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x3c

    if-le v5, v6, :cond_5

    .line 1096
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v6, "mmbUri is too long."

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1098
    :cond_5
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbOutline:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x82

    if-le v5, v6, :cond_6

    .line 1099
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v6, "mmbOutline is too long."

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1104
    :cond_6
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->deleteCandidate()V

    .line 1107
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->getCurrentAribDateInAddTvLink()J

    move-result-wide v2

    .line 1111
    .local v2, "settime":J
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1112
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1114
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1116
    .local v1, "insert":Landroid/content/ContentValues;
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->setMemberTvLink2ConstantValues(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;JLandroid/content/ContentValues;)V

    .line 1119
    const-string v5, "tvlinkTbl"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1120
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1125
    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1135
    return-void

    .line 1121
    .end local v1    # "insert":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1122
    .local v0, "e":Landroid/database/SQLException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1123
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v6, "SQLException"

    invoke-direct {v5, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1125
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1127
    :catch_1
    move-exception v0

    .line 1128
    .restart local v0    # "e":Landroid/database/SQLException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1129
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v6, "SQLException"

    invoke-direct {v5, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getDeleteCandidate()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .locals 19

    .prologue
    .line 836
    const/4 v2, 0x0

    .line 837
    .local v2, "rdatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 838
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 842
    .local v15, "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->getCurrentAribDateInGetDeleteCandidate()J

    move-result-wide v12

    .line 845
    .local v12, "basetime":J
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 849
    :try_start_0
    const-string v3, "tvlinkTbl"

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->ALL_COLUMNS_AND_ROWID:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "expire ASC"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 853
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->tvLinkCountMax:I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v3, v4, :cond_1

    .line 857
    const/16 v18, 0x0

    .line 912
    if-eqz v11, :cond_0

    .line 913
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v18

    .line 861
    :cond_1
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 862
    const-string v3, "expire"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    .line 866
    .local v16, "expire":J
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-eqz v3, :cond_3

    cmp-long v3, v12, v16

    if-lez v3, :cond_3

    .line 867
    new-instance v18, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    invoke-direct/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;-><init>()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 869
    .end local v15    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .local v18, "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->setMemberCursor2TvLink(Landroid/database/Cursor;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    .line 871
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 872
    const/4 v11, 0x0

    .line 912
    if-eqz v11, :cond_2

    .line 913
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object/from16 v15, v18

    .end local v18    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v15    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    goto :goto_0

    .line 880
    .end local v16    # "expire":J
    :cond_3
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 881
    const/4 v11, 0x0

    .line 884
    const-string v3, "tvlinkTbl"

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->ALL_COLUMNS_AND_ROWID:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid ASC"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 888
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 889
    new-instance v18, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    invoke-direct/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;-><init>()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 891
    .end local v15    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v18    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->setMemberCursor2TvLink(Landroid/database/Cursor;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    .line 893
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 894
    const/4 v11, 0x0

    .line 912
    if-eqz v11, :cond_4

    .line 913
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object/from16 v15, v18

    .end local v18    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v15    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    goto :goto_0

    .line 902
    :cond_5
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 903
    const/4 v11, 0x0

    .line 906
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v4, "Can\'t get delete canditate row."

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 908
    :catch_0
    move-exception v14

    .line 909
    .local v14, "e":Landroid/database/SQLException;
    :goto_1
    :try_start_6
    invoke-static {v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 910
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v4, "SQLException"

    invoke-direct {v3, v4, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 912
    .end local v14    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v11, :cond_6

    .line 913
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    .line 912
    .end local v15    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v18    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    :catchall_1
    move-exception v3

    move-object/from16 v15, v18

    .end local v18    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v15    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    goto :goto_2

    .line 908
    .end local v15    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v18    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    :catch_1
    move-exception v14

    move-object/from16 v15, v18

    .end local v18    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v15    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    goto :goto_1
.end method

.method public getTvLink()Ljava/util/List;
    .locals 19
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
    .line 774
    const/4 v2, 0x0

    .line 775
    .local v2, "rdatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 776
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 777
    .local v15, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    const/16 v17, 0x0

    .line 780
    .local v17, "tmp":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 785
    :try_start_0
    const-string v3, "tvlinkTbl"

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->ALL_COLUMNS_AND_ROWID:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid DESC"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 788
    const/4 v13, 0x0

    .local v13, "i":I
    move-object/from16 v18, v17

    .local v18, "tmp":Ljava/lang/Object;
    move-object/from16 v16, v15

    .line 789
    .end local v15    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    .end local v17    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .local v16, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    :goto_0
    if-nez v13, :cond_1

    .line 790
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v14

    .line 794
    .local v14, "res":Z
    :goto_1
    if-nez v14, :cond_2

    .line 813
    if-eqz v11, :cond_0

    .line 814
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 821
    :cond_0
    return-object v16

    .line 792
    .end local v14    # "res":Z
    :cond_1
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    .restart local v14    # "res":Z
    goto :goto_1

    .line 797
    :cond_2
    if-nez v16, :cond_4

    .line 798
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 800
    .end local v16    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    .restart local v15    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    :goto_2
    :try_start_3
    new-instance v17, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    invoke-direct/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;-><init>()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 803
    .restart local v17    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->setMemberCursor2TvLink(Landroid/database/Cursor;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    .line 806
    .end local v18    # "tmp":Ljava/lang/Object;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 807
    const/16 v17, 0x0

    .line 788
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v18, v17

    .restart local v18    # "tmp":Ljava/lang/Object;
    move-object/from16 v16, v15

    .end local v15    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    .restart local v16    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    goto :goto_0

    .line 809
    .end local v13    # "i":I
    .end local v14    # "res":Z
    .end local v16    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    .end local v18    # "tmp":Ljava/lang/Object;
    .restart local v15    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    :catch_0
    move-exception v12

    .line 810
    .local v12, "e":Landroid/database/SQLException;
    :goto_3
    :try_start_5
    invoke-static {v12}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 811
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v4, "SQLException"

    invoke-direct {v3, v4, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 813
    .end local v12    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v11, :cond_3

    .line 814
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    .line 813
    .end local v15    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    .end local v17    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v13    # "i":I
    .restart local v16    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    .restart local v18    # "tmp":Ljava/lang/Object;
    :catchall_1
    move-exception v3

    move-object/from16 v17, v18

    .restart local v17    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    move-object/from16 v15, v16

    .end local v16    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    .restart local v15    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    goto :goto_4

    .end local v17    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v14    # "res":Z
    :catchall_2
    move-exception v3

    move-object/from16 v17, v18

    .restart local v17    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    goto :goto_4

    .line 809
    .end local v14    # "res":Z
    .end local v15    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    .end local v17    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v16    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    :catch_1
    move-exception v12

    move-object/from16 v17, v18

    .restart local v17    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    move-object/from16 v15, v16

    .end local v16    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    .restart local v15    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    goto :goto_3

    .end local v17    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v14    # "res":Z
    :catch_2
    move-exception v12

    move-object/from16 v17, v18

    .restart local v17    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    goto :goto_3

    .end local v15    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    .end local v17    # "tmp":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v16    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    :cond_4
    move-object/from16 v15, v16

    .end local v16    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    .restart local v15    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    goto :goto_2
.end method

.method public getTvLinkCountMax()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->tvLinkCountMax:I

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "aArg0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 581
    const-string v0, "CREATE TABLE tvlinkTbl ( title text not null,  dstUrl text not null,  outline text not null,  xproBMType integer not null, expire integer not null, serviceId integer not null, broadcasterId integer not null, setTime integer not null)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "aArg0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "aArg1"    # I
    .param p3, "aArg2"    # I

    .prologue
    .line 605
    return-void
.end method

.method public removeTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 11
    .param p1, "aLink"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    .line 933
    const/4 v0, 0x0

    .line 934
    .local v0, "wdatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 937
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez p1, :cond_0

    .line 938
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "aLink is null."

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 942
    :cond_0
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbTitle:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 943
    const-string v1, ""

    iput-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbTitle:Ljava/lang/String;

    .line 945
    :cond_1
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbUri:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 946
    const-string v1, ""

    iput-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbUri:Ljava/lang/String;

    .line 948
    :cond_2
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbOutline:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 949
    const-string v1, ""

    iput-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbOutline:Ljava/lang/String;

    .line 954
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 958
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rowid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbRowId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 961
    .local v3, "deletewhile":Ljava/lang/String;
    const-string v1, "tvlinkTbl"

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->ALL_COLUMNS_AND_ROWID:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 963
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 964
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 966
    const-string v1, "tvlinkTbl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 967
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 973
    :cond_4
    if-eqz v9, :cond_5

    .line 974
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 976
    :cond_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 986
    return-void

    .line 969
    .end local v3    # "deletewhile":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 970
    .local v10, "e":Landroid/database/SQLException;
    :try_start_3
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 971
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v2, "SQLException"

    invoke-direct {v1, v2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 973
    .end local v10    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    .line 974
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 976
    :cond_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 978
    :catch_1
    move-exception v10

    .line 979
    .restart local v10    # "e":Landroid/database/SQLException;
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 980
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v2, "SQLException"

    invoke-direct {v1, v2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized removeTvLinkAll()V
    .locals 5

    .prologue
    .line 1001
    monitor-enter p0

    const/4 v1, 0x0

    .line 1004
    .local v1, "wdatebase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1005
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1008
    :try_start_1
    const-string v2, "tvlinkTbl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1009
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1014
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1024
    monitor-exit p0

    return-void

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    .local v0, "e":Landroid/database/SQLException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1012
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v3, "SQLException"

    invoke-direct {v2, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1014
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1016
    :catch_1
    move-exception v0

    .line 1017
    .restart local v0    # "e":Landroid/database/SQLException;
    :try_start_5
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1018
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;

    const-string v3, "SQLException"

    invoke-direct {v2, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1001
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setParent(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;)V
    .locals 0
    .param p1, "aParent"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    .line 652
    return-void
.end method

.method public setTvLinkCountMax(I)V
    .locals 0
    .param p1, "aTvLinkCountMax"    # I

    .prologue
    .line 637
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv$MmbTvLinkDatabaseSv;->tvLinkCountMax:I

    .line 641
    return-void
.end method
