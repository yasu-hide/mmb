.class public Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;
.super Landroid/content/ContentProvider;
.source "MmbFwContentProviderSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;
    }
.end annotation


# static fields
.field private static final PATTERN_ARRAY:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

.field private static final PATTERN_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;",
            ">;"
        }
    .end annotation
.end field

.field static mmbQueryId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static volatile sDisabled:Z

.field private static sDisabledQueryLatch:Ljava/util/concurrent/CountDownLatch;

.field private static sQueryCount:I

.field private static theQueryId:I


# instance fields
.field private mSettings:Lmmb/android/MmbSeMngMw/MmbSeMngMw;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    .line 124
    const/4 v0, 0x0

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sQueryCount:I

    .line 126
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabled:Z

    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabledQueryLatch:Ljava/util/concurrent/CountDownLatch;

    .line 358
    const/16 v0, 0xe

    new-array v11, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    const/4 v12, 0x0

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    const/4 v1, 0x1

    const-string v2, "QueryId = ? AND GetType = ? AND EntityId = ? AND DictionaryMode = ? AND DictionaryChange = ? AND VersionFilter = ? AND "

    const/4 v3, 0x6

    const-string v4, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v11, v12

    const/4 v12, 0x1

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    const/4 v1, 0x2

    const-string v2, "QueryId = ? AND GetType = ? AND DictionaryMode = ? AND DictionaryChange = ? AND VersionFilter = ? AND "

    const/4 v3, 0x5

    const-string v4, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v11, v12

    const/4 v12, 0x2

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    const/4 v1, 0x3

    const-string v2, "QueryId = ? AND GetType = ? AND EntityId = ? AND DictionaryMode = ? AND DictionaryChange = ? AND DownloadStatus = ? AND VersionFilter = ? AND "

    const/4 v3, 0x7

    const-string v4, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v11, v12

    const/4 v12, 0x3

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    const/4 v1, 0x4

    const-string v2, "QueryId = ? AND GetType = ? AND DictionaryMode = ? AND DictionaryChange = ? AND DownloadStatus = ? AND VersionFilter = ? AND "

    const/4 v3, 0x6

    const-string v4, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v11, v12

    const/4 v12, 0x4

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    const/4 v1, 0x5

    const-string v2, "QueryId = ? AND GetType = ? AND EntityId = ? AND DictionaryMode = ? AND DictionaryChange = ? AND VersionFilter = ? AND crid in (?"

    const/4 v3, 0x6

    const-string v4, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v11, v12

    const/4 v12, 0x5

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    const/4 v1, 0x6

    const-string v2, "QueryId = ? AND GetType = ? AND EntityId = ? AND DictionaryMode = ? AND DictionaryChange = ? AND ScheduleType = ? AND ReserveType = ? AND crid LIKE ? AND ServiceId in (?"

    const/16 v3, 0x8

    const-string v4, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v11, v12

    const/4 v12, 0x6

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    const/4 v1, 0x7

    const-string v2, "QueryId = ? AND GetType = ?"

    const/4 v3, -0x1

    const-string v4, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v11, v12

    const/4 v12, 0x7

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    const/16 v1, 0x8

    const-string v2, "QueryId = ? AND GetType = ? AND DictionaryMode = ? AND DictionaryChange = ? AND ServiceId = ?"

    const/4 v3, 0x4

    const-string v4, "content://com.nttdocomo.mmb.android.mmbsv/contents/serviceid"

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    const/16 v1, 0x9

    const-string v2, "QueryId = ? AND GetType = ? AND DictionaryMode = ? AND DictionaryChange = ? AND VersionFilter = ? AND "

    const/4 v3, 0x5

    const-string v4, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    const/16 v1, 0xa

    const-string v2, "QueryId = ? AND GetType = ? AND DictionaryMode = ? AND DictionaryChange = ? AND VersionFilter = ? AND "

    const/4 v3, 0x5

    const-string v4, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    const/16 v1, 0xb

    const-string v2, "QueryId = ? AND GetType = ? AND DictionaryMode = ? AND DictionaryChange = ? AND DownloadStatus = ? AND VersionFilter = ? AND "

    const/4 v3, 0x6

    const-string v4, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    const/16 v1, 0xc

    const-string v2, "QueryId = ? AND GetType = ? AND VersionFilter = ? AND "

    const/4 v3, 0x3

    const-string v4, "content://com.nttdocomo.mmb.android.mmbsv/contents/prgno"

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    const/16 v1, 0xd

    const-string v2, "QueryId = ? AND GetType = ? AND VersionFilter = ?"

    const/4 v3, -0x1

    const-string v4, "content://com.nttdocomo.mmb.android.mmbsv/contents/prgno"

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    const/16 v1, 0xe

    const-string v2, "QueryId = ? AND GetType = ? AND EntityId = ? AND DictionaryMode = ? AND DictionaryChange = ? AND DownloadStatus = ? AND "

    const/4 v3, 0x6

    const-string v4, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtSearchSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v11, v12

    sput-object v11, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->PATTERN_ARRAY:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    .line 434
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 435
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;>;"
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->PATTERN_ARRAY:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    .local v6, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v8, v6, v7

    .line 436
    .local v8, "item":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;
    iget v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 438
    .end local v8    # "item":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;
    :cond_0
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->PATTERN_MAP:Ljava/util/Map;

    .line 647
    const/4 v0, 0x0

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->theQueryId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mSettings:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    .line 142
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-direct {v0}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mSettings:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    .line 146
    return-void
.end method

.method private cancel(I)Z
    .locals 6
    .param p1, "aMagicNubmer"    # I

    .prologue
    .line 629
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    monitor-enter v2

    .line 630
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    const/4 v0, 0x1

    .line 639
    .local v0, "result":Z
    :goto_0
    monitor-exit v2

    .line 643
    return v0

    .line 633
    .end local v0    # "result":Z
    :cond_0
    const-string v1, "Target QueryId #%d is not found. The Query has been finished or is not called."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0

    .line 639
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkParameter(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "aUri"    # Landroid/net/Uri;
    .param p2, "aProjection"    # [Ljava/lang/String;
    .param p3, "aSelection"    # Ljava/lang/String;
    .param p4, "aSelectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 701
    const-string v2, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "content://com.nttdocomo.mmb.android.mmbsv/contents/serviceid"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "content://com.nttdocomo.mmb.android.mmbsv/queryid"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "content://com.nttdocomo.mmb.android.mmbsv/cancel"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "content://com.nttdocomo.mmb.android.mmbsv/contents/prgno"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 706
    const-string v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "The specified ContentURI is illegal. The target ContentURI is \'"

    aput-object v4, v3, v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "\'."

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    :goto_0
    return v0

    .line 713
    :cond_0
    if-eqz p2, :cond_1

    array-length v2, p2

    if-nez v2, :cond_1

    .line 714
    const-string v2, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "The specified Columns is empty."

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 721
    :cond_1
    if-nez p3, :cond_2

    .line 722
    const-string v2, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "The specified QueryCondition is null."

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 729
    :cond_2
    if-nez p4, :cond_3

    .line 730
    const-string v2, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "The specified QueryConditionValue is null."

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 735
    :cond_3
    array-length v2, p4

    if-nez v2, :cond_4

    .line 736
    const-string v2, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "The specified QueryConditionValue is empty."

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 745
    goto :goto_0
.end method

.method public static disableContentProvider()V
    .locals 4

    .prologue
    .line 764
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    monitor-enter v2

    .line 766
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabled:Z

    .line 772
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 776
    sget v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sQueryCount:I

    if-gtz v1, :cond_0

    .line 782
    monitor-exit v2

    .line 799
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 784
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    sget v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sQueryCount:I

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabledQueryLatch:Ljava/util/concurrent/CountDownLatch;

    .line 788
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    :try_start_1
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabledQueryLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 788
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getQueryId(I)Landroid/database/Cursor;
    .locals 8
    .param p1, "aRequestSize"    # I

    .prologue
    .line 661
    const/4 v2, 0x0

    .line 662
    .local v2, "result":Landroid/database/MatrixCursor;
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    monitor-enter v5

    .line 663
    :try_start_0
    new-instance v3, Landroid/database/MatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "QueryId"

    aput-object v7, v4, v6

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 665
    .end local v2    # "result":Landroid/database/MatrixCursor;
    .local v3, "result":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 666
    :try_start_1
    sget v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->theQueryId:I

    const v6, 0xffffff

    rem-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->theQueryId:I

    .line 667
    :goto_1
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    sget v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->theQueryId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 668
    sget v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->theQueryId:I

    const v6, 0xffffff

    rem-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->theQueryId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 673
    :catchall_0
    move-exception v4

    move-object v2, v3

    .end local v1    # "i":I
    .end local v3    # "result":Landroid/database/MatrixCursor;
    .restart local v2    # "result":Landroid/database/MatrixCursor;
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 670
    .end local v2    # "result":Landroid/database/MatrixCursor;
    .restart local v1    # "i":I
    .restart local v3    # "result":Landroid/database/MatrixCursor;
    :cond_0
    const/4 v4, 0x1

    :try_start_3
    new-array v0, v4, [Ljava/lang/Integer;

    const/4 v4, 0x0

    sget v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->theQueryId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v4

    .line 671
    .local v0, "columns":[Ljava/lang/Integer;
    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    .end local v0    # "columns":[Ljava/lang/Integer;
    :cond_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 677
    return-object v3

    .line 673
    .end local v1    # "i":I
    .end local v3    # "result":Landroid/database/MatrixCursor;
    .restart local v2    # "result":Landroid/database/MatrixCursor;
    :catchall_1
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "aArg0"    # Landroid/net/Uri;
    .param p2, "aArg1"    # Ljava/lang/String;
    .param p3, "aArg2"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 158
    sget-boolean v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabled:Z

    if-eqz v2, :cond_1

    .line 159
    const-string v2, "ContentProvider is disabled."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.nttdocomo.mmb.android.mmbsv/settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mSettings:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v2, p1, p2, p3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "aArg0"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 187
    sget-boolean v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabled:Z

    if-eqz v2, :cond_1

    .line 188
    const-string v2, "ContentProvider is disabled."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_0
    :goto_0
    return-object v1

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.nttdocomo.mmb.android.mmbsv/settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mSettings:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v2, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "aArg0"    # Landroid/net/Uri;
    .param p2, "aArg1"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x0

    .line 216
    sget-boolean v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabled:Z

    if-eqz v2, :cond_1

    .line 217
    const-string v2, "ContentProvider is disabled."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :cond_0
    :goto_0
    return-object v1

    .line 224
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.nttdocomo.mmb.android.mmbsv/settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mSettings:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v2, p1, p2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mSettings:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->onCreate()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .param p1, "aUri"    # Landroid/net/Uri;
    .param p2, "aProjection"    # [Ljava/lang/String;
    .param p3, "aSelection"    # Ljava/lang/String;
    .param p4, "aSelectionArgs"    # [Ljava/lang/String;
    .param p5, "aSortOrder"    # Ljava/lang/String;

    .prologue
    .line 460
    sget-boolean v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabled:Z

    if-eqz v2, :cond_0

    .line 461
    const-string v2, "ContentProvider is disabled."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    const/4 v14, 0x0

    .line 612
    :goto_0
    return-object v14

    .line 468
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.nttdocomo.mmb.android.mmbsv/settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 470
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mSettings:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    goto :goto_0

    .line 471
    :catch_0
    move-exception v9

    .line 472
    .local v9, "err":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 473
    const/4 v14, 0x0

    goto :goto_0

    .line 480
    .end local v9    # "err":Ljava/lang/Exception;
    :cond_1
    invoke-direct/range {p0 .. p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->checkParameter(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 484
    const/4 v14, 0x0

    goto :goto_0

    .line 487
    :cond_2
    const/4 v6, 0x0

    .line 489
    .local v6, "queryid":I
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 490
    .local v16, "uri":Ljava/lang/String;
    const-string v2, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "content://com.nttdocomo.mmb.android.mmbsv/contents/serviceid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "content://com.nttdocomo.mmb.android.mmbsv/contents/prgno"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 492
    :cond_3
    const/4 v2, 0x0

    aget-object v2, p4, v2

    if-eqz v2, :cond_4

    .line 493
    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 532
    :cond_4
    const/4 v2, 0x1

    :try_start_2
    aget-object v2, p4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v10

    .line 542
    .local v10, "gettype":I
    const/4 v1, 0x0

    .line 543
    .local v1, "query":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->PATTERN_MAP:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;

    .line 544
    .local v12, "item":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;
    if-eqz v12, :cond_5

    iget-object v2, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;->mKeyword:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p4

    array-length v2, v0

    iget v3, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;->mIndex:I

    if-le v2, v3, :cond_5

    iget-object v2, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;->mUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 548
    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;->newInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;

    move-result-object v1

    .line 550
    :cond_5
    if-nez v1, :cond_a

    .line 551
    const-string v2, "The specified QueryCondition is wrong (%s)."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 495
    .end local v1    # "query":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;
    .end local v10    # "gettype":I
    .end local v12    # "item":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;
    :cond_6
    :try_start_3
    const-string v2, "content://com.nttdocomo.mmb.android.mmbsv/queryid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "RequestSize = ?"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 497
    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->getQueryId(I)Landroid/database/Cursor;

    move-result-object v14

    .line 504
    .local v14, "result":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 505
    .end local v14    # "result":Landroid/database/Cursor;
    :cond_7
    const-string v2, "content://com.nttdocomo.mmb.android.mmbsv/cancel"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "QueryId in (?"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 508
    move-object/from16 v7, p4

    .local v7, "arr$":[Ljava/lang/String;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v13, :cond_8

    aget-object v15, v7, v11

    .line 509
    .local v15, "strnumber":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->cancel(I)Z

    .line 508
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 514
    .end local v15    # "strnumber":Ljava/lang/String;
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 516
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    :cond_9
    const-string v2, "The specified QueryCondition is wrong (%s)."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 520
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 522
    .end local v16    # "uri":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 523
    .local v8, "e":Ljava/lang/NumberFormatException;
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 527
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 533
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "uri":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 534
    .restart local v8    # "e":Ljava/lang/NumberFormatException;
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 538
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 558
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "query":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;
    .restart local v10    # "gettype":I
    .restart local v12    # "item":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;
    :cond_a
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    monitor-enter v3

    .line 559
    :try_start_4
    sget-boolean v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabled:Z

    if-eqz v2, :cond_b

    .line 560
    const-string v2, "ContentProvider is disabled."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    const/4 v14, 0x0

    monitor-exit v3

    goto/16 :goto_0

    .line 567
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 566
    :cond_b
    :try_start_5
    sget v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sQueryCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sQueryCount:I

    .line 567
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 570
    :try_start_6
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    monitor-enter v3
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 571
    if-eqz v6, :cond_e

    .line 572
    :try_start_7
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 573
    const-string v2, "The Query#%d is being executed now."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v5

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    const/4 v14, 0x0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 603
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    monitor-enter v3

    .line 604
    :try_start_8
    sget v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sQueryCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sQueryCount:I

    .line 605
    sget-boolean v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabled:Z

    if-eqz v2, :cond_c

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabledQueryLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_c

    .line 606
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabledQueryLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 610
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 612
    :cond_c
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 579
    :cond_d
    :try_start_9
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_e
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 582
    :try_start_a
    invoke-interface/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v14

    .line 583
    .restart local v14    # "result":Landroid/database/Cursor;
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    monitor-enter v3
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 584
    if-eqz v6, :cond_f

    .line 585
    :try_start_b
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 587
    :cond_f
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 603
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    monitor-enter v3

    .line 604
    :try_start_c
    sget v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sQueryCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sQueryCount:I

    .line 605
    sget-boolean v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabled:Z

    if-eqz v2, :cond_10

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabledQueryLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_10

    .line 606
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabledQueryLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 610
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 612
    :cond_10
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v2

    .line 581
    .end local v14    # "result":Landroid/database/Cursor;
    :catchall_3
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v2
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 596
    :catch_3
    move-exception v8

    .line 597
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_f
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 601
    const/4 v14, 0x0

    .line 603
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    monitor-enter v3

    .line 604
    :try_start_10
    sget v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sQueryCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sQueryCount:I

    .line 605
    sget-boolean v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabled:Z

    if-eqz v2, :cond_11

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabledQueryLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_11

    .line 606
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabledQueryLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 610
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 612
    :cond_11
    monitor-exit v3

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v2

    .line 587
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .restart local v14    # "result":Landroid/database/Cursor;
    :catchall_5
    move-exception v2

    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw v2
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 603
    .end local v14    # "result":Landroid/database/Cursor;
    :catchall_6
    move-exception v2

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    monitor-enter v3

    .line 604
    :try_start_13
    sget v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sQueryCount:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sQueryCount:I

    .line 605
    sget-boolean v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabled:Z

    if-eqz v4, :cond_12

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabledQueryLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v4, :cond_12

    .line 606
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabledQueryLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 610
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mmbQueryId:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 612
    :cond_12
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    throw v2

    :catchall_7
    move-exception v2

    :try_start_14
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "aArg0"    # Landroid/net/Uri;
    .param p2, "aArg1"    # Landroid/content/ContentValues;
    .param p3, "aArg2"    # Ljava/lang/String;
    .param p4, "aArg3"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 263
    sget-boolean v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->sDisabled:Z

    if-eqz v2, :cond_1

    .line 264
    const-string v2, "ContentProvider is disabled."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :cond_0
    :goto_0
    return v1

    .line 271
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.nttdocomo.mmb.android.mmbsv/settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->mSettings:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v2, p1, p2, p3, p4}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
