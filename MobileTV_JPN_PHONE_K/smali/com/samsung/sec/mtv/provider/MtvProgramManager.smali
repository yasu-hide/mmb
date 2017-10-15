.class public Lcom/samsung/sec/mtv/provider/MtvProgramManager;
.super Ljava/lang/Object;
.source "MtvProgramManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/samsung/sec/mtv/provider/IMtvProgramManager;


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.curosr.item/vnd.android.mtv.program"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.android.mtv.program"

.field public static final CONTENT_URI:Landroid/net/Uri;

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

.field protected static final TABLE:Ljava/lang/String; = "programs"

.field private static final TAG:Ljava/lang/String; = "MtvProgramManager"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const-string v0, "content://com.samsung.sec.mtv/programs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->CONTENT_URI:Landroid/net/Uri;

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "epg_pch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "epg_vch"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "epg_plock"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "epg_stime"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "epg_etime"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "epg_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "epg_detail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION:[Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION_MAP:Ljava/util/HashMap;

    .line 36
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "epg_pch"

    const-string v2, "epg_pch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "epg_vch"

    const-string v2, "epg_vch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "epg_plock"

    const-string v2, "epg_plock"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "epg_stime"

    const-string v2, "epg_stime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "epg_etime"

    const-string v2, "epg_etime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "epg_name"

    const-string v2, "epg_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "epg_detail"

    const-string v2, "epg_detail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvProgram;
    .locals 11
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 72
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvProgram;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x5

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x6

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-direct/range {v0 .. v10}, Lcom/samsung/sec/mtv/provider/MtvProgram;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static delete(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriId"    # J

    .prologue
    const/4 v2, 0x0

    .line 190
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 191
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 195
    if-nez p1, :cond_0

    .line 196
    sget-object p1, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->CONTENT_URI:Landroid/net/Uri;

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method public static deleteByStreamTime(Landroid/content/Context;J)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "curTime"    # J

    .prologue
    const/4 v6, 0x0

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "bRetVal":Z
    invoke-static {p0, v6, v6}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 216
    .local v2, "iTempCountBef":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "epg_etime<="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    invoke-static {p0, v6, v6}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 221
    .local v1, "iTempCountAft":I
    if-eq v2, v1, :cond_0

    .line 222
    const/4 v0, 0x1

    .line 224
    :cond_0
    return v0
.end method

.method public static deletePChannelPrograms(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nPCh"    # I

    .prologue
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "epg_pch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public static findByPChannel(Landroid/content/Context;JI)Lcom/samsung/sec/mtv/provider/MtvProgram;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startTime"    # J
    .param p3, "nPch"    # I

    .prologue
    const/4 v4, 0x0

    .line 114
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->CONTENT_URI:Landroid/net/Uri;

    .line 115
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION:[Ljava/lang/String;

    .line 116
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "epg_stime="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND epg_pch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    const/4 v7, 0x0

    .line 119
    .local v7, "prgram":Lcom/samsung/sec/mtv/provider/MtvProgram;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 120
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 122
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 123
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvProgram;

    move-result-object v7

    .line 125
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_1
    return-object v7
.end method

.method public static findProgramsByPChannel(Landroid/content/Context;I)[Lcom/samsung/sec/mtv/provider/MtvProgram;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nPCh"    # I

    .prologue
    const/4 v4, 0x0

    .line 131
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->CONTENT_URI:Landroid/net/Uri;

    .line 132
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->PROJECTION:[Ljava/lang/String;

    .line 133
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "epg_pch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "where":Ljava/lang/String;
    const/4 v9, 0x0

    .line 135
    .local v9, "prgrams":[Lcom/samsung/sec/mtv/provider/MtvProgram;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 136
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 139
    .local v8, "nTotalCnt":I
    if-lez v8, :cond_0

    .line 140
    new-array v9, v8, [Lcom/samsung/sec/mtv/provider/MtvProgram;

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 142
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 143
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvProgram;

    move-result-object v0

    aput-object v0, v9, v7

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 142
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 147
    .end local v7    # "i":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 149
    .end local v8    # "nTotalCnt":I
    :cond_1
    return-object v9
.end method

.method public static findProgramsByPChannel(Landroid/content/Context;II)[Lcom/samsung/sec/mtv/provider/MtvProgram;
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "latestPChannelFromVChannel"    # I
    .param p2, "latestServiceID"    # I

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static getContentValues(Lcom/samsung/sec/mtv/provider/MtvProgram;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "prog"    # Lcom/samsung/sec/mtv/provider/MtvProgram;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    .line 49
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 50
    .local v0, "values":Landroid/content/ContentValues;
    if-nez p0, :cond_1

    .line 51
    const-string v1, "MtvProgramManager"

    const-string v2, "getContentValues : MtvArea is NULL"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    if-eq v1, v3, :cond_2

    .line 54
    const-string v1, "epg_pch"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    :cond_2
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mVch:I

    if-eq v1, v3, :cond_3

    .line 56
    const-string v1, "epg_vch"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mVch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    :cond_3
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mLock:I

    if-eq v1, v3, :cond_4

    .line 58
    const-string v1, "epg_plock"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mLock:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    :cond_4
    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 60
    const-string v1, "epg_stime"

    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    :cond_5
    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 62
    const-string v1, "epg_etime"

    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    :cond_6
    iget-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 64
    const-string v1, "epg_name"

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_7
    iget-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmDetail:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "epg_detail"

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmDetail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCount(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nPch"    # I

    .prologue
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "epg_pch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "where":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 96
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "count"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 97
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 98
    .local v6, "count":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 99
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 101
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 102
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 103
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_0
    return v6
.end method

.method public static getCurrentProgramByPhCh(Landroid/content/Context;IJ)Lcom/samsung/sec/mtv/provider/MtvProgram;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nPhCh"    # I
    .param p2, "streamTime"    # J

    .prologue
    const/4 v2, 0x0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "epg_pch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND epg_stime<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    const/4 v7, 0x0

    .line 158
    .local v7, "program":Lcom/samsung/sec/mtv/provider/MtvProgram;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 159
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 161
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 162
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvProgram;

    move-result-object v7

    .line 164
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_1
    return-object v7
.end method

.method public static getUri(I)Landroid/net/Uri;
    .locals 4
    .param p0, "UriID"    # I

    .prologue
    .line 89
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 90
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateOrInsert(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvProgram;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "program"    # Lcom/samsung/sec/mtv/provider/MtvProgram;

    .prologue
    const/4 v6, 0x0

    .line 171
    iget v3, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mUriId:I

    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->getUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 172
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 173
    iget-wide v4, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    iget v3, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    invoke-static {p0, v4, v5, v3}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->findByPChannel(Landroid/content/Context;JI)Lcom/samsung/sec/mtv/provider/MtvProgram;

    move-result-object v0

    .line 174
    .local v0, "old":Lcom/samsung/sec/mtv/provider/MtvProgram;
    if-eqz v0, :cond_0

    .line 175
    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mUriId:I

    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->getUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 177
    .end local v0    # "old":Lcom/samsung/sec/mtv/provider/MtvProgram;
    :cond_0
    if-nez v1, :cond_1

    .line 178
    const-string v3, "MtvProgramManager"

    const-string v4, "update: insert channel"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {p1}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvProgram;)Landroid/content/ContentValues;

    move-result-object v2

    .line 180
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 187
    :goto_0
    return-void

    .line 182
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 183
    const-string v3, "MtvProgramManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update: update channel uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_2
    invoke-static {p1}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvProgram;)Landroid/content/ContentValues;

    move-result-object v2

    .line 185
    .restart local v2    # "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateProgramsByVch(Landroid/content/Context;[Landroid/broadcast/helper/types/MtvOneSegProgram;IZ)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "programsList"    # [Landroid/broadcast/helper/types/MtvOneSegProgram;
    .param p2, "vch"    # I
    .param p3, "isForceUpdate"    # Z

    .prologue
    .line 229
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 231
    :cond_0
    const-string v2, "MtvProgramManager"

    const-string v3, "updateProgramsByVch: programsList or Context may be NULL!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v2, 0x0

    .line 254
    :goto_0
    return v2

    .line 234
    :cond_1
    const/4 v1, 0x0

    .line 235
    .local v1, "mTempProg":Lcom/samsung/sec/mtv/provider/MtvProgram;
    const-string v2, "MtvProgramManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProgramsByVch: vch : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] isForceUpdate : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-eqz p3, :cond_2

    .line 238
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->delete(Landroid/content/Context;Landroid/net/Uri;)V

    .line 241
    :cond_2
    const/4 v0, 0x0

    .local v0, "iLoop":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_5

    aget-object v2, p1, v0

    if-eqz v2, :cond_5

    .line 243
    new-instance v1, Lcom/samsung/sec/mtv/provider/MtvProgram;

    .end local v1    # "mTempProg":Lcom/samsung/sec/mtv/provider/MtvProgram;
    aget-object v2, p1, v0

    invoke-direct {v1, v2, p2}, Lcom/samsung/sec/mtv/provider/MtvProgram;-><init>(Landroid/broadcast/helper/types/MtvOneSegProgram;I)V

    .line 244
    .restart local v1    # "mTempProg":Lcom/samsung/sec/mtv/provider/MtvProgram;
    const-string v2, "MtvProgramManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProgramsByVch: [#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvProgram;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v2, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    const-string v3, "No program name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    :cond_3
    const-string v2, "MtvProgramManager"

    const-string v3, "updateProgramsByVch: Program Name null"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    :cond_4
    invoke-static {p0, v1}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->updateOrInsert(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvProgram;)V

    goto :goto_2

    .line 254
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0
.end method
