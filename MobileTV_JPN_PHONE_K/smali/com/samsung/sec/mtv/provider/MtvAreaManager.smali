.class public Lcom/samsung/sec/mtv/provider/MtvAreaManager;
.super Ljava/lang/Object;
.source "MtvAreaManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final AREA_ID:Ljava/lang/String; = "area_id"

.field public static final AREA_NAME:Ljava/lang/String; = "area_name"

.field public static final COLUMN_AREAID:I = 0x1

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_NAME:I = 0x2

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.curosr.item/vnd.android.mtv.area"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.android.mtv.area"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final PROJECTION:[Ljava/lang/String;

.field protected static PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TABLE:Ljava/lang/String; = "areas"

.field private static final TAG:Ljava/lang/String; = "MtvAreaManager"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-string v0, "content://com.samsung.sec.mtv/areas"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->CONTENT_URI:Landroid/net/Uri;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "area_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "area_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->PROJECTION:[Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->PROJECTION_MAP:Ljava/util/HashMap;

    .line 37
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "area_id"

    const-string v2, "area_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "area_name"

    const-string v2, "area_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvArea;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 59
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvArea;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/provider/MtvArea;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method public static find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvArea;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 81
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->CONTENT_URI:Landroid/net/Uri;

    .line 82
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 85
    .local v6, "area":Lcom/samsung/sec/mtv/provider/MtvArea;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 86
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 87
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 89
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvArea;

    move-result-object v6

    .line 91
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_1
    return-object v6
.end method

.method public static getAllAreas(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvArea;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 104
    .local v7, "cursor":Landroid/database/Cursor;
    const/16 v0, 0xa

    new-array v6, v0, [Lcom/samsung/sec/mtv/provider/MtvArea;

    .line 105
    .local v6, "areas":[Lcom/samsung/sec/mtv/provider/MtvArea;
    if-eqz v7, :cond_1

    .line 106
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 107
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 108
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvArea;

    move-result-object v0

    aput-object v0, v6, v8

    .line 106
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 112
    .end local v8    # "i":I
    :cond_1
    return-object v6
.end method

.method protected static getContentValues(Lcom/samsung/sec/mtv/provider/MtvArea;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "area"    # Lcom/samsung/sec/mtv/provider/MtvArea;

    .prologue
    .line 45
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .local v0, "values":Landroid/content/ContentValues;
    if-nez p0, :cond_1

    .line 48
    const-string v1, "MtvAreaManager"

    const-string v2, "getContentValues : MtvArea is NULL"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    const-string v1, "area_id"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    iget-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "area_name"

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 131
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "count"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 132
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 133
    .local v6, "count":I
    const-string v3, "area_id<>-1"

    .line 135
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 136
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 137
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 138
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 139
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 141
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_1
    return v6
.end method

.method public static update(Landroid/content/Context;ILcom/samsung/sec/mtv/provider/MtvArea;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "area"    # Lcom/samsung/sec/mtv/provider/MtvArea;

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvArea;)Landroid/content/ContentValues;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public static update2Default(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 123
    const-string v0, "Empty"

    .line 124
    .local v0, "defaultAreaname":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 125
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "area_id"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v2, "area_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    return-void
.end method


# virtual methods
.method public getUri(I)Landroid/net/Uri;
    .locals 4
    .param p1, "UriID"    # I

    .prologue
    .line 68
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 69
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
