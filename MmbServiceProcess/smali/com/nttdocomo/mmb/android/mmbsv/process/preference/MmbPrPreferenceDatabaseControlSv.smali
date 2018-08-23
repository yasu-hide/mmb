.class public final Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MmbPrPreferenceDatabaseControlSv.java"


# static fields
.field private static volatile mInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;


# instance fields
.field private mALayerEnvironmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;",
            ">;"
        }
    .end annotation
.end field

.field private mComplement:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 81
    const-string v0, "mmbPrPreference.db"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mComplement:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mALayerEnvironmentList:Ljava/util/List;

    .line 69
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->loadComplement()V

    .line 90
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->loadPgInfo()V

    .line 95
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;
    .locals 1
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 113
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;

    .line 119
    :cond_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;

    return-object v0
.end method

.method private loadComplement()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 533
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->COLUMN_IDENTIFICATION:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->mName:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->COLUMN_COMPLEMENT_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->mName:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 541
    .local v2, "databaseRecord":[Ljava/lang/String;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mComplement:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 543
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mmbComplementTbl"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 546
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mComplement:Ljava/util/HashMap;

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->COLUMN_IDENTIFICATION:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->mName:Ljava/lang/String;

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->COLUMN_COMPLEMENT_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->mName:Ljava/lang/String;

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 561
    return-void
.end method

.method private loadPgInfo()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 574
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_SERVICE_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_BROADCASTER_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_PORT:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x3

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_TSI_PRIMARY:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x4

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_TSI_SECONDARY:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x5

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_IPADDRESS:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 586
    .local v2, "databaseRecord":[Ljava/lang/String;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mALayerEnvironmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 588
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mmbPgInfoTbl"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 591
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    :cond_0
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;

    invoke-direct {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;-><init>()V

    .line 595
    .local v9, "info":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_SERVICE_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->setServiceId(I)V

    .line 598
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_BROADCASTER_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->setBroadcasterId(I)V

    .line 601
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_PORT:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->setPort(I)V

    .line 604
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_TSI_PRIMARY:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->setTsiPrimary(I)V

    .line 607
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_TSI_SECONDARY:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->setTsiSecondary(I)V

    .line 610
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_IPADDRESS:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->setIpAddress(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mALayerEnvironmentList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    .end local v9    # "info":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 622
    return-void
.end method

.method private setDefultData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "aDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 504
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv;->PGINFO_DEFAULT_DATA:[[Ljava/lang/Object;

    .local v0, "arr$":[[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 506
    .local v3, "objects":[Ljava/lang/Object;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 507
    .local v4, "values":Landroid/content/ContentValues;
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_SERVICE_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_BROADCASTER_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_PORT:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 510
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_TSI_PRIMARY:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_TSI_SECONDARY:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 512
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_IPADDRESS:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    iget-object v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v5, "mmbPgInfoTbl"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v3    # "objects":[Ljava/lang/Object;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method


# virtual methods
.method public closeMmbPrPreference()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 480
    :cond_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;

    monitor-enter v1

    .line 481
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;

    .line 482
    monitor-exit v1

    .line 486
    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getALayerEnvironment(I)Ljava/util/List;
    .locals 5
    .param p1, "aBroadcasterId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    const/4 v3, 0x0

    .line 248
    .local v3, "infolist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mALayerEnvironmentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;

    .line 249
    .local v2, "info":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;->getBroadcasterId()I

    move-result v0

    .line 251
    .local v0, "broadcasterid":I
    if-ne v0, p1, :cond_0

    .line 255
    if-nez v3, :cond_1

    .line 256
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "infolist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .restart local v3    # "infolist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;>;"
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v0    # "broadcasterid":I
    .end local v2    # "info":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;
    :cond_2
    return-object v3
.end method

.method public getCompletionId(Ljava/lang/String;)[B
    .locals 2
    .param p1, "aIdentification"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 224
    .local v0, "complementId":[B
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mComplement:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "complementId":[B
    check-cast v0, [B

    .line 229
    .restart local v0    # "complementId":[B
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "aDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 143
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v2, "createSqlCompletitionId":Ljava/lang/StringBuilder;
    const-string v7, "create table mmbComplementTbl ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->values()[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    move-result-object v0

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 149
    .local v1, "column":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->mOption:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->ordinal()I

    move-result v7

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->values()[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-eq v7, v8, :cond_0

    .line 153
    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "column":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;
    :cond_1
    const-string v7, ");"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v3, "createSqlPgInfo":Ljava/lang/StringBuilder;
    const-string v7, "create table mmbPgInfoTbl ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->values()[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    move-result-object v0

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;
    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v1, v0, v5

    .line 167
    .local v1, "column":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mOption:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->ordinal()I

    move-result v7

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->values()[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-eq v7, v8, :cond_2

    .line 171
    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 174
    .end local v1    # "column":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;
    :cond_3
    const-string v7, ");"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->setDefultData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 178
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 191
    return-void

    .line 180
    .end local v0    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;
    .end local v2    # "createSqlCompletitionId":Ljava/lang/StringBuilder;
    .end local v3    # "createSqlPgInfo":Ljava/lang/StringBuilder;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v4

    .line 181
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 182
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "aDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "aOldVersion"    # I
    .param p3, "aNewVersion"    # I

    .prologue
    .line 206
    return-void
.end method

.method public setCompletionId(Ljava/lang/String;[B)V
    .locals 13
    .param p1, "aIdentification"    # Ljava/lang/String;
    .param p2, "aCpId"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 288
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mmbComplementTbl"

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->COLUMN_COMPLEMENT_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->mName:Ljava/lang/String;

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->COLUMN_IDENTIFICATION:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 294
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 295
    .local v12, "values":Landroid/content/ContentValues;
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->COLUMN_IDENTIFICATION:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->mName:Ljava/lang/String;

    invoke-virtual {v12, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->COLUMN_COMPLEMENT_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->mName:Ljava/lang/String;

    invoke-virtual {v12, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 301
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mmbComplementTbl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->COLUMN_IDENTIFICATION:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 331
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->loadComplement()V

    .line 332
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceFileUtilitySv;

    invoke-direct {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceFileUtilitySv;-><init>()V

    .line 336
    .local v11, "fileUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceFileUtilitySv;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmbPrPreference.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceFileUtilitySv;->backupFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 346
    return-void

    .line 310
    .end local v11    # "fileUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceFileUtilitySv;
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mmbComplementTbl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v9

    .line 314
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceFileUtilitySv;

    invoke-direct {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceFileUtilitySv;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    .restart local v11    # "fileUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceFileUtilitySv;
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmbPrPreference.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceFileUtilitySv;->restoreFile(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 324
    :try_start_5
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 328
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v11    # "fileUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceFileUtilitySv;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 320
    .restart local v9    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v11    # "fileUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceFileUtilitySv;
    :catch_1
    move-exception v10

    .line 321
    .local v10, "e1":Ljava/io/IOException;
    :try_start_6
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 322
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 339
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v10    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 340
    .local v9, "e":Ljava/io/IOException;
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 341
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbPrPreferenceDatabaseControlSv [mComplement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mComplement:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
