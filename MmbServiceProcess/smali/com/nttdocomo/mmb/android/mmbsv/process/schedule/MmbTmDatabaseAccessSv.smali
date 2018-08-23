.class final Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;
.super Ljava/lang/Object;
.source "MmbTmDatabaseAccessSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;
    }
.end annotation


# static fields
.field private static final QUERY_DATA_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_OPERATION_ARRAY:[Ljava/lang/String;

.field private static final QUERY_ORDER_ARRAY:[Ljava/lang/String;

.field private static final QUERY_PARAMETER_CONTENT_MEDIA_ARRAY:[[Ljava/lang/String;

.field private static final QUERY_PARAMETER_HISTORY_ARRAY:[[Ljava/lang/String;

.field private static final QUERY_PARAMETER_RESERVE_TYPE_ARRAY:[[Ljava/lang/String;

.field private static final QUERY_SCHEDULE_TYPE_ARRAY:[[Ljava/lang/String;

.field private static generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

.field private static mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

.field static maxCountFcAccumulation:I

.field static maxCountFcPlay:I

.field static maxCountSeries:I

.field static maxCountStView:I

.field private static myInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

.field private static serviceContext:Landroid/content/Context;


# instance fields
.field private columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private sortCheckList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sortReplaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private whereCheckList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private whereReplaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 192
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 194
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "scheduleType"

    const-string v2, "mmbScheduleType"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "triggerTime"

    const-string v2, "mmbTriggerTime"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "crid"

    const-string v2, "mmbCrid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "history"

    const-string v2, "mmbHistory"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "reserveType"

    const-string v2, "mmbReserveType"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "contentMedia"

    const-string v2, "mmbContentMedia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v1, "serviceId"

    const-string v2, "mmbServiceId"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "reservedPackageName"

    const-string v2, "mmbPackageName"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "contentTitle"

    const-string v2, "mmbContentTitle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "contentStartTime"

    const-string v2, "mmbContentStartTime"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "contentEndTime"

    const-string v2, "mmbContentEndTime"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "contentPlayTime"

    const-string v2, "mmbContentPlayTime"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "contentPlayDate"

    const-string v2, "mmbContentPlayDate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "work1"

    const-string v2, "mmbWork1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "work2"

    const-string v2, "mmbWork2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "work3"

    const-string v2, "mmbWork3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_DATA_MAP:Ljava/util/Map;

    .line 213
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "="

    aput-object v2, v1, v7

    const-string v2, "IN"

    aput-object v2, v1, v5

    const-string v2, "&"

    aput-object v2, v1, v6

    const-string v2, "<"

    aput-object v2, v1, v9

    const-string v2, ">"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "<="

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ">="

    aput-object v3, v1, v2

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_OPERATION_ARRAY:[Ljava/lang/String;

    .line 216
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ASC"

    aput-object v2, v1, v7

    const-string v2, "DESC"

    aput-object v2, v1, v5

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_ORDER_ARRAY:[Ljava/lang/String;

    .line 219
    const/16 v1, 0xc

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SCHEDULE_TYPE_ST_VIEW"

    aput-object v3, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SCHEDULE_TYPE_FC_PLAY"

    aput-object v3, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SCHEDULE_TYPE_FC_ACCUMULATION"

    aput-object v3, v2, v7

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SCHEDULE_TYPE_FC_OPEN_PUBLIC"

    aput-object v3, v2, v7

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SCHEDULE_TYPE_FC_COMPLEMENT"

    aput-object v3, v2, v7

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "SCHEDULE_TYPE_EPG_ECG_GET"

    aput-object v4, v3, v7

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "SCHEDULE_TYPE_EPG_ECG_GET_B_TRANSMISSION"

    aput-object v4, v3, v7

    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "SCHEDULE_TYPE_RECOMMEND_GET"

    aput-object v4, v3, v7

    const/16 v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "SCHEDULE_TYPE_LOG_SEND"

    aput-object v4, v3, v7

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "SCHEDULE_TYPE_SERIES"

    aput-object v4, v3, v7

    const/16 v4, 0x800

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "SCHEDULE_TYPE_ST_REC"

    aput-object v4, v3, v7

    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "SCHEDULE_TYPE_FC_COMPLEMENT_FDT"

    aput-object v4, v3, v7

    const/16 v4, 0x2000

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v3, v1, v2

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_SCHEDULE_TYPE_ARRAY:[[Ljava/lang/String;

    .line 256
    new-array v1, v6, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HISTORY_OFF"

    aput-object v3, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HISTORY_ON"

    aput-object v3, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_PARAMETER_HISTORY_ARRAY:[[Ljava/lang/String;

    .line 260
    new-array v1, v8, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "RESERVE_TYPE_AUTO"

    aput-object v3, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "RESERVE_TYPE_MANUAL"

    aput-object v3, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "RESERVE_TYPE_RECOMMEND"

    aput-object v3, v2, v7

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "RESERVE_TYPE_MEDIASCHEME"

    aput-object v3, v2, v7

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v9

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_PARAMETER_RESERVE_TYPE_ARRAY:[[Ljava/lang/String;

    .line 270
    const/4 v1, 0x6

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CONTENT_MEDIA_VIDEO"

    aput-object v3, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CONTENT_MEDIA_AUDIO"

    aput-object v3, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CONTENT_MEDIA_DATA"

    aput-object v3, v2, v7

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CONTENT_MEDIA_PICTURE"

    aput-object v3, v2, v7

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CONTENT_MEDIA_ML"

    aput-object v3, v2, v7

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "CONTENT_MEDIA_OTHERS"

    aput-object v4, v3, v7

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v3, v1, v2

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_PARAMETER_CONTENT_MEDIA_ARRAY:[[Ljava/lang/String;

    .line 290
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;-><init>()V

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->myInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    .line 292
    const/4 v1, 0x0

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->serviceContext:Landroid/content/Context;

    .line 294
    const/4 v1, 0x0

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 296
    const/4 v1, 0x0

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    .line 308
    const/16 v1, 0xfa

    sput v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->maxCountStView:I

    .line 310
    const/16 v1, 0xfa

    sput v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->maxCountFcPlay:I

    .line 312
    const/16 v1, 0xfa0

    sput v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->maxCountFcAccumulation:I

    .line 314
    const/16 v1, 0x1f4

    sput v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->maxCountSeries:I

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 300
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->whereCheckList:Ljava/util/List;

    .line 302
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->whereReplaceList:Ljava/util/List;

    .line 304
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->sortCheckList:Ljava/util/List;

    .line 306
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->sortReplaceList:Ljava/util/List;

    .line 316
    iput-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    .line 435
    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_DATA_MAP:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 436
    .local v7, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 440
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 441
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 442
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 443
    .local v5, "outside":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 444
    .local v2, "inside":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_OPERATION_ARRAY:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_2

    .line 445
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_OPERATION_ARRAY:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "checkstring":Ljava/lang/String;
    const-string v8, "reservedPackageName"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v4, :cond_1

    .line 450
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "LIKE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 454
    .local v6, "replacestring":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->whereCheckList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->whereReplaceList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 452
    .end local v6    # "replacestring":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_OPERATION_ARRAY:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "replacestring":Ljava/lang/String;
    goto :goto_1

    .line 457
    .end local v0    # "checkstring":Ljava/lang/String;
    .end local v6    # "replacestring":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    :goto_2
    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_ORDER_ARRAY:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_0

    .line 458
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_ORDER_ARRAY:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    .restart local v0    # "checkstring":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_ORDER_ARRAY:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 460
    .restart local v6    # "replacestring":Ljava/lang/String;
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->sortCheckList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->sortReplaceList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 467
    .end local v0    # "checkstring":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "inside":Ljava/lang/String;
    .end local v4    # "j":I
    .end local v5    # "outside":Ljava/lang/String;
    .end local v6    # "replacestring":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private addScheduleTypeToSearchString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "aSearchString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 3641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3642
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3643
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_DATA_MAP:Ljava/util/Map;

    const-string v8, "scheduleType"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3644
    .local v6, "type":Ljava/lang/String;
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_SCHEDULE_TYPE_ARRAY:[[Ljava/lang/String;

    aget-object v7, v7, v9

    aget-object v5, v7, v9

    .line 3645
    .local v5, "stview":Ljava/lang/String;
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_SCHEDULE_TYPE_ARRAY:[[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    aget-object v2, v7, v9

    .line 3646
    .local v2, "fcplay":Ljava/lang/String;
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_SCHEDULE_TYPE_ARRAY:[[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    aget-object v1, v7, v9

    .line 3647
    .local v1, "fcaccumu":Ljava/lang/String;
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_SCHEDULE_TYPE_ARRAY:[[Ljava/lang/String;

    const/16 v8, 0x9

    aget-object v7, v7, v8

    aget-object v3, v7, v9

    .line 3648
    .local v3, "series":Ljava/lang/String;
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_SCHEDULE_TYPE_ARRAY:[[Ljava/lang/String;

    const/16 v8, 0xa

    aget-object v7, v7, v8

    aget-object v4, v7, v9

    .line 3650
    .local v4, "strec":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 3651
    const-string v7, " AND "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3652
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3653
    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3654
    const-string v7, "IN"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3655
    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3656
    const-string v7, "("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3657
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3658
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3659
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3660
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3662
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3663
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3664
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3665
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3666
    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3671
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private checkMultiplexString([Ljava/lang/String;)V
    .locals 10
    .param p1, "aWhereArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 3390
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 3392
    .local v6, "temphashset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_DATA_MAP:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 3393
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3396
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_3

    .line 3399
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3400
    const/4 v2, 0x0

    .line 3401
    .local v2, "index":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3402
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3403
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3404
    .local v4, "outside":Ljava/lang/String;
    aget-object v7, p1, v1

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_1

    .line 3410
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "outside":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3412
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v8, -0x3e9

    const-string v9, "Illegal parameter"

    invoke-direct {v7, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v7

    .line 3407
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "outside":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3396
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "outside":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3419
    .end local v2    # "index":I
    :cond_3
    return-void
.end method

.method private checkParameterForIntegerType(Ljava/lang/String;Ljava/util/List;)V
    .locals 13
    .param p1, "aSearch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .local p2, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v12, -0x3e9

    .line 3231
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3233
    :cond_0
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const-string v11, "Illegal parameter"

    invoke-direct {v10, v12, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v10

    .line 3237
    :cond_1
    const/16 v10, 0xc

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "scheduleType "

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-string v11, "triggerTime "

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "history "

    aput-object v11, v6, v10

    const/4 v10, 0x3

    const-string v11, "reserveType "

    aput-object v11, v6, v10

    const/4 v10, 0x4

    const-string v11, "contentMedia "

    aput-object v11, v6, v10

    const/4 v10, 0x5

    const-string v11, "serviceId "

    aput-object v11, v6, v10

    const/4 v10, 0x6

    const-string v11, "contentStartTime "

    aput-object v11, v6, v10

    const/4 v10, 0x7

    const-string v11, "contentEndTime "

    aput-object v11, v6, v10

    const/16 v10, 0x8

    const-string v11, "contentPlayTime "

    aput-object v11, v6, v10

    const/16 v10, 0x9

    const-string v11, "contentPlayDate "

    aput-object v11, v6, v10

    const/16 v10, 0xa

    const-string v11, "work1 "

    aput-object v11, v6, v10

    const/16 v10, 0xb

    const-string v11, "work2 "

    aput-object v11, v6, v10

    .line 3252
    .local v6, "integerlist":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 3253
    .local v1, "datalistsize":I
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v3, v0, v5

    .line 3254
    .local v3, "find":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_2

    .line 3255
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 3257
    :try_start_0
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 3258
    .local v8, "tempinteger":J
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v4, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3255
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3259
    .end local v8    # "tempinteger":J
    :catch_0
    move-exception v2

    .line 3261
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const-string v11, "Illegal parameter"

    invoke-direct {v10, v12, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v10

    .line 3253
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "i":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3271
    .end local v3    # "find":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private checkParameterForTextType(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 8
    .param p1, "aSearch"    # Ljava/lang/String;
    .param p3, "aIsLike"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 3296
    .local p2, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3298
    :cond_0
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v5, -0x3e9

    const-string v6, "Illegal parameter"

    invoke-direct {v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v4

    .line 3304
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3305
    .local v0, "datalistsize":I
    const-string v1, "crid "

    .line 3306
    .local v1, "find":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 3307
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 3309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "\'"

    const-string v7, "\'\'"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3311
    .local v3, "tempstring":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3307
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3318
    .end local v2    # "i":I
    .end local v3    # "tempstring":Ljava/lang/String;
    :cond_2
    const-string v1, "reservedPackageName "

    .line 3319
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_5

    .line 3320
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 3322
    const/4 v4, 0x1

    if-ne p3, v4, :cond_4

    .line 3324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "\'"

    const-string v7, "\'\'"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3327
    .restart local v3    # "tempstring":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3371
    .end local v2    # "i":I
    .end local v3    # "tempstring":Ljava/lang/String;
    :cond_3
    return-void

    .line 3332
    .restart local v2    # "i":I
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "\'"

    const-string v7, "\'\'"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3334
    .restart local v3    # "tempstring":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3320
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3342
    .end local v2    # "i":I
    .end local v3    # "tempstring":Ljava/lang/String;
    :cond_5
    const-string v1, "contentTitle "

    .line 3343
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_6

    .line 3344
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 3346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "\'"

    const-string v7, "\'\'"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3348
    .restart local v3    # "tempstring":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3344
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3355
    .end local v2    # "i":I
    .end local v3    # "tempstring":Ljava/lang/String;
    :cond_6
    const-string v1, "work3 "

    .line 3356
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 3357
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_3

    .line 3359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "\'"

    const-string v7, "\'\'"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3361
    .restart local v3    # "tempstring":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3357
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private checkParameterMaxSplitCount([Ljava/lang/String;)V
    .locals 3
    .param p1, "aTempArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 3467
    array-length v0, p1

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 3469
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v1, -0x3e9

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3475
    :cond_0
    return-void
.end method

.method private checkParameterOperatorIn(Ljava/lang/String;)V
    .locals 3
    .param p1, "aDataString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 3495
    const-string v0, "\\(.+?\\)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3497
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v1, -0x3e9

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3503
    :cond_0
    return-void
.end method

.method private convertOutsideDataToInsideData(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3135
    if-nez p1, :cond_0

    .line 3137
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v7, -0x3e9

    const-string v8, "Illegal parameter"

    invoke-direct {v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v6

    .line 3144
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 3146
    .local v4, "listsize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_b

    .line 3147
    const/4 v1, 0x0

    .line 3149
    .local v1, "done":Z
    const/4 v3, 0x0

    .line 3150
    .local v3, "index":I
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_SCHEDULE_TYPE_ARRAY:[[Ljava/lang/String;

    array-length v0, v6

    .line 3151
    .local v0, "arraylength":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 3152
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_SCHEDULE_TYPE_ARRAY:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v5, v6, v7

    .line 3153
    .local v5, "outside":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3154
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_SCHEDULE_TYPE_ARRAY:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v6, v6, v8

    invoke-interface {p1, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3155
    const/4 v1, 0x1

    .line 3159
    .end local v5    # "outside":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_4

    .line 3146
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3151
    .restart local v5    # "outside":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3163
    .end local v5    # "outside":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .line 3164
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_PARAMETER_HISTORY_ARRAY:[[Ljava/lang/String;

    array-length v0, v6

    .line 3165
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_5

    .line 3166
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_PARAMETER_HISTORY_ARRAY:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v5, v6, v7

    .line 3167
    .restart local v5    # "outside":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3168
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_PARAMETER_HISTORY_ARRAY:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v6, v6, v8

    invoke-interface {p1, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3169
    const/4 v1, 0x1

    .line 3173
    .end local v5    # "outside":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_2

    .line 3177
    const/4 v3, 0x0

    .line 3178
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_PARAMETER_RESERVE_TYPE_ARRAY:[[Ljava/lang/String;

    array-length v0, v6

    .line 3179
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 3180
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_PARAMETER_RESERVE_TYPE_ARRAY:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v5, v6, v7

    .line 3181
    .restart local v5    # "outside":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3182
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_PARAMETER_RESERVE_TYPE_ARRAY:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v6, v6, v8

    invoke-interface {p1, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3183
    const/4 v1, 0x1

    .line 3187
    .end local v5    # "outside":Ljava/lang/String;
    :cond_6
    if-nez v1, :cond_2

    .line 3191
    const/4 v3, 0x0

    .line 3192
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_PARAMETER_CONTENT_MEDIA_ARRAY:[[Ljava/lang/String;

    array-length v0, v6

    .line 3193
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_7

    .line 3194
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_PARAMETER_CONTENT_MEDIA_ARRAY:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v5, v6, v7

    .line 3195
    .restart local v5    # "outside":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3196
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->QUERY_PARAMETER_CONTENT_MEDIA_ARRAY:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v6, v6, v8

    invoke-interface {p1, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3197
    const/4 v1, 0x1

    .line 3201
    .end local v5    # "outside":Ljava/lang/String;
    :cond_7
    if-eqz v1, :cond_2

    goto :goto_2

    .line 3165
    .restart local v5    # "outside":Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3179
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3193
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3208
    .end local v0    # "arraylength":I
    .end local v1    # "done":Z
    .end local v3    # "index":I
    .end local v5    # "outside":Ljava/lang/String;
    :cond_b
    return-void
.end method

.method private createWhereQuery(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;II)Ljava/lang/String;
    .locals 6
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aRepeatFlag"    # I
    .param p3, "aFinishFlag"    # I

    .prologue
    .line 2863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2864
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, "repeatFlag"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2865
    const-string v3, " & "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2866
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2867
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2868
    const-string v3, "timerFinishFlag"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2869
    const-string v3, " & "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2870
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2871
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2874
    const-string v3, "scheduleType"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2875
    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2876
    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2877
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2878
    const-string v3, "triggerTime"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2879
    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2880
    iget-wide v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2881
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2882
    const-string v3, "crid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2883
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 2884
    const-string v3, " IS NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2891
    :goto_0
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2892
    const-string v3, "history"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2893
    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2895
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2896
    const-string v3, "reserveType"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2897
    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2898
    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2899
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2900
    const-string v3, "contentTitle"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2901
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 2902
    const-string v3, " IS NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2908
    :goto_1
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2909
    const-string v3, "contentStartTime"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2910
    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2911
    iget-wide v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2912
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2913
    const-string v3, "contentEndTime"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2914
    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2915
    iget-wide v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2916
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    const-string v3, "contentPlayTime"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2918
    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    iget-wide v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2920
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2921
    const-string v3, "contentPlayDate"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2922
    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2923
    iget-wide v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayDate:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2924
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2925
    const-string v3, "contentIndex"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2926
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 2927
    const-string v3, " IS NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    :goto_2
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2934
    const-string v3, "contentMedia"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2935
    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2936
    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2937
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2938
    const-string v3, "serviceId"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2939
    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2940
    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2941
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2942
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->makeDbSeriesIdFromSeriesIdArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2943
    .local v1, "dbsereisid":Ljava/lang/String;
    const-string v3, "seriesId"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2944
    if-nez v1, :cond_3

    .line 2945
    const-string v3, " IS NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2951
    :goto_3
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2952
    const-string v3, "work1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2953
    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2954
    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2955
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2956
    const-string v3, "work2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2957
    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    iget-wide v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2959
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2960
    const-string v3, "work3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2961
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 2962
    const-string v3, " IS NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2968
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2972
    .local v2, "where":Ljava/lang/String;
    return-object v2

    .line 2886
    .end local v1    # "dbsereisid":Ljava/lang/String;
    .end local v2    # "where":Ljava/lang/String;
    :cond_0
    const-string v3, " = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2887
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    const-string v5, "\'\'"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2889
    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2904
    :cond_1
    const-string v3, " = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2905
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    const-string v4, "\'"

    const-string v5, "\'\'"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2906
    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2929
    :cond_2
    const-string v3, " = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2930
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    const-string v4, "\'"

    const-string v5, "\'\'"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2931
    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2947
    .restart local v1    # "dbsereisid":Ljava/lang/String;
    :cond_3
    const-string v3, " = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2948
    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2949
    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2964
    :cond_4
    const-string v3, " = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2965
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    const-string v4, "\'"

    const-string v5, "\'\'"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2966
    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4
.end method

.method private createWhereQuery(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;II)Ljava/lang/String;
    .locals 8
    .param p1, "aSearchKeyword"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .param p2, "aRepeatFlag"    # I
    .param p3, "aFinishFlag"    # I

    .prologue
    const-wide/16 v6, -0x3e7

    const/16 v5, -0x3e7

    .line 2997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2998
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "repeatFlag"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2999
    const-string v2, " & "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3001
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3002
    const-string v2, "timerFinishFlag"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3003
    const-string v2, " & "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3004
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3006
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    if-eq v2, v5, :cond_0

    .line 3007
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3008
    const-string v2, "scheduleType"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3009
    const-string v2, " & "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3010
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3012
    :cond_0
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3013
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3014
    const-string v2, "crid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3015
    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3018
    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3020
    :cond_1
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbHistory:I

    if-eq v2, v5, :cond_2

    .line 3021
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3022
    const-string v2, "history"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    const-string v2, " & "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3024
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbHistory:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3026
    :cond_2
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbReserveType:I

    if-eq v2, v5, :cond_3

    .line 3027
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3028
    const-string v2, "reserveType"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3029
    const-string v2, " & "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3030
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbReserveType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3032
    :cond_3
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentMedia:I

    if-eq v2, v5, :cond_4

    .line 3033
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3034
    const-string v2, "contentMedia"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3035
    const-string v2, " & "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3036
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentMedia:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3038
    :cond_4
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbServiceId:I

    if-eq v2, v5, :cond_5

    .line 3039
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3040
    const-string v2, "serviceId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3041
    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3042
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbServiceId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3044
    :cond_5
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 3045
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3046
    const-string v2, "reservedPackageName"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3047
    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3048
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3050
    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3052
    :cond_6
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentTitle:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 3053
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3054
    const-string v2, "contentTitle"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3055
    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3056
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentTitle:Ljava/lang/String;

    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3057
    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3059
    :cond_7
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentStartTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_8

    .line 3060
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3061
    const-string v2, "contentStartTime"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3062
    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3063
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3065
    :cond_8
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentEndTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_9

    .line 3066
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3067
    const-string v2, "contentEndTime"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3068
    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3069
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3071
    :cond_9
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentPlayTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_a

    .line 3072
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3073
    const-string v2, "contentPlayTime"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3074
    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3075
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentPlayTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3077
    :cond_a
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentPlayDate:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_b

    .line 3078
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3079
    const-string v2, "contentPlayDate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3080
    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3081
    iget-wide v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbContentPlayDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3083
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3087
    .local v1, "where":Ljava/lang/String;
    return-object v1
.end method

.method private extractScheduleDataFromCursor(Landroid/database/Cursor;Ljava/util/List;)V
    .locals 6
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2600
    .local p2, "aScheduleDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2603
    :cond_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 2604
    .local v2, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_SCHEDULE_TYPE:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 2605
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_TRIGGER_TIME:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 2606
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CRID:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 2607
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_HISTORY:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 2608
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_RESERVE_TYPE:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    .line 2609
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_TITLE:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    .line 2610
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_START_TIME:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 2612
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_END_TIME:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    .line 2614
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_PLAY_TIME:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayTime:J

    .line 2616
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_PLAY_DATE:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayDate:J

    .line 2618
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_INDEX:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    .line 2619
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_MEDIA:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    .line 2620
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_SERVICE_ID:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    .line 2621
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_SERIES_ID:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2622
    .local v0, "dbsereisid":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 2626
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    .line 2638
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_WORK_1:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 2639
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_WORK_2:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    .line 2640
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_WORK_3:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    .line 2641
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2642
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2647
    .end local v0    # "dbsereisid":Ljava/lang/String;
    .end local v2    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_2
    return-void

    .line 2628
    .restart local v0    # "dbsereisid":Ljava/lang/String;
    .restart local v2    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_3
    const-string v3, " "

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    .line 2629
    iget-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2630
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 2631
    iget-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "[single]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 2633
    iget-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    const-string v4, "crid://"

    aput-object v4, v3, v1

    .line 2630
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private extractScheduleRecordFromCursor(Landroid/database/Cursor;Ljava/util/List;)V
    .locals 6
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2668
    .local p2, "aRecordDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2671
    :cond_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;-><init>()V

    .line 2672
    .local v2, "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_ID:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    .line 2673
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_SCHEDULE_TYPE:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    .line 2674
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_TRIGGER_TIME:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    .line 2675
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_REPEAT_FLAG:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    .line 2676
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_TIMER_FINISH_FLAG:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    .line 2678
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CRID:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    .line 2679
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_HISTORY:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbHistory:I

    .line 2680
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_INTENT_PACKAGE_NAME:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentPackageName:Ljava/lang/String;

    .line 2682
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_INTENT_CLASS_NAME:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentClassName:Ljava/lang/String;

    .line 2684
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_RESERVED_PACKAGE_NAME:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    .line 2686
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_RESERVE_TYPE:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReserveType:I

    .line 2687
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_TITLE:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentTitle:Ljava/lang/String;

    .line 2688
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_START_TIME:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentStartTime:J

    .line 2690
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_END_TIME:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentEndTime:J

    .line 2692
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_PLAY_TIME:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentPlayTime:J

    .line 2694
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_PLAY_DATE:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentPlayDate:J

    .line 2696
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_INDEX:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCntIndex:Ljava/lang/String;

    .line 2697
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_MEDIA:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentMedia:I

    .line 2698
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_SERVICE_ID:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbServiceId:I

    .line 2699
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_SERIES_ID:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2700
    .local v0, "dbsereisid":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 2701
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 2712
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_WORK_1:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork1:I

    .line 2713
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_WORK_2:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork2:J

    .line 2714
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_WORK_3:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork3:Ljava/lang/String;

    .line 2715
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_TIME_STAMP:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimeStamp:J

    .line 2716
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2717
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2722
    .end local v0    # "dbsereisid":Ljava/lang/String;
    .end local v2    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_2
    return-void

    .line 2703
    .restart local v0    # "dbsereisid":Ljava/lang/String;
    .restart local v2    # "record":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    :cond_3
    const-string v3, " "

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    .line 2704
    iget-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2705
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 2706
    iget-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "[single]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 2707
    iget-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    const-string v4, "crid://"

    aput-object v4, v3, v1

    .line 2705
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static getInstance(Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;
    .locals 3
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aGeneralInstance"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 494
    if-nez p0, :cond_0

    .line 496
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v1, -0x3e9

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    sput-object p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->serviceContext:Landroid/content/Context;

    .line 500
    sput-object p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 501
    sput-object p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    .line 505
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->myInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    return-object v0
.end method

.method private isDatabaseOpenEx()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 3106
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3108
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v1, -0x3ea

    const-string v2, "Database not open"

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3115
    :cond_0
    return-void
.end method

.method private isEnableRepeatAndFinishFlag(II)V
    .locals 3
    .param p1, "aRepeatFlag"    # I
    .param p2, "aFinishFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    const/16 v2, -0x3e9

    .line 2743
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    .line 2746
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2748
    :cond_0
    and-int/lit8 v0, p2, -0x4

    if-eqz v0, :cond_1

    .line 2751
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2757
    :cond_1
    return-void
.end method

.method private makeDbSeriesIdFromSeriesIdArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "aSeriesIdArray"    # [Ljava/lang/String;

    .prologue
    .line 3596
    if-nez p1, :cond_0

    .line 3600
    const/4 v2, 0x0

    .line 3620
    :goto_0
    return-object v2

    .line 3602
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3604
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 3605
    aget-object v3, p1, v1

    .line 3607
    .local v3, "tempstring":Ljava/lang/String;
    const-string v4, "crid://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3608
    const-string v3, "[single]"

    .line 3611
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3612
    add-int/lit8 v4, v1, 0x1

    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 3613
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3604
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3616
    .end local v3    # "tempstring":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 3620
    .local v2, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private makeSplitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "aString"    # Ljava/lang/String;
    .param p2, "aSplit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 3567
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3576
    .local v1, "wherearray":[Ljava/lang/String;
    return-object v1

    .line 3568
    .end local v1    # "wherearray":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3570
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v3, -0x3e9

    const-string v4, "Illegal parameter"

    invoke-direct {v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private makeWhereReplaceString(ILjava/util/List;)Ljava/lang/StringBuilder;
    .locals 4
    .param p1, "aIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 3524
    .local p2, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3525
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->whereReplaceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3526
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->whereReplaceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "IN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 3528
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3529
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3530
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3531
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3532
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3529
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3535
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3543
    .end local v1    # "j":I
    :goto_1
    return-object v0

    .line 3538
    :cond_2
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private nullCheckString(Ljava/lang/String;)V
    .locals 3
    .param p1, "aWhere"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 3439
    if-nez p1, :cond_0

    .line 3441
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v1, -0x3e9

    const-string v2, "Illegal parameter"

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3447
    :cond_0
    return-void
.end method

.method static setConstantFromPreference()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 521
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->maxCountStView:I

    .line 525
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->maxCountFcPlay:I

    .line 529
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->maxCountFcAccumulation:I

    .line 533
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->maxCountSeries:I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 552
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 546
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 547
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setOrderQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "aSort"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    const/16 v9, -0x3e9

    .line 1895
    const/4 v2, 0x0

    .line 1899
    .local v2, "orderquery":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v3, v2

    .line 1957
    .end local v2    # "orderquery":Ljava/lang/String;
    .local v3, "orderquery":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1906
    .end local v3    # "orderquery":Ljava/lang/String;
    .restart local v2    # "orderquery":Ljava/lang/String;
    :cond_0
    const-string v6, "ASC"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "DESC"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1908
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const-string v7, "Illegal parameter"

    invoke-direct {v6, v9, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v6

    .line 1914
    :cond_1
    const-string v6, ","

    invoke-direct {p0, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->makeSplitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1917
    .local v4, "sortarray":[Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->checkMultiplexString([Ljava/lang/String;)V

    .line 1921
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v4

    if-ge v0, v6, :cond_3

    .line 1923
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 1925
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->sortCheckList:Ljava/util/List;

    aget-object v7, v4, v0

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1926
    .local v1, "index":I
    if-gez v1, :cond_2

    .line 1929
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const-string v7, "Illegal parameter"

    invoke-direct {v6, v9, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v6

    .line 1933
    :cond_2
    aget-object v8, v4, v0

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->sortCheckList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->sortReplaceList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 1921
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1939
    .end local v1    # "index":I
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1940
    .local v5, "sortbuilder":Ljava/lang/StringBuilder;
    const-string v6, "ORDER BY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    const/4 v0, 0x0

    .line 1943
    :cond_4
    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    add-int/lit8 v6, v0, 0x1

    array-length v7, v4

    if-ge v6, v7, :cond_5

    .line 1945
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 1948
    array-length v6, v4

    if-lt v0, v6, :cond_4

    .line 1953
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 1957
    .end local v2    # "orderquery":Ljava/lang/String;
    .restart local v3    # "orderquery":Ljava/lang/String;
    goto :goto_0
.end method

.method private setWhereQuery(Ljava/lang/String;II)Ljava/lang/String;
    .locals 19
    .param p1, "aWhere"    # Ljava/lang/String;
    .param p2, "aRepeatFlag"    # I
    .param p3, "aFinishFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 1762
    const/4 v15, 0x0

    .line 1766
    .local v15, "wherequery":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isEnableRepeatAndFinishFlag(II)V

    .line 1768
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->nullCheckString(Ljava/lang/String;)V

    .line 1771
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->addScheduleTypeToSearchString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1775
    const-string v16, " AND "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->makeSplitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1778
    .local v13, "wherearray":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->checkMultiplexString([Ljava/lang/String;)V

    .line 1782
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1789
    .local v3, "builderlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StringBuilder;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_6

    .line 1791
    const/4 v9, -0x1

    .line 1792
    .local v9, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->whereCheckList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v5

    .line 1793
    .local v5, "cherechecklistsize":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v5, :cond_0

    .line 1794
    aget-object v17, v13, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->whereCheckList:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1795
    move v9, v11

    .line 1799
    :cond_0
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_2

    .line 1802
    new-instance v16, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v17, -0x3e9

    const-string v18, "Illegal parameter"

    invoke-direct/range {v16 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v16

    .line 1793
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1806
    :cond_2
    aget-object v18, v13, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->whereCheckList:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->whereReplaceList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v8

    .line 1810
    aget-object v17, v13, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->whereReplaceList:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1812
    .local v7, "datastring":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1813
    .local v6, "datalist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1814
    .local v10, "islike":Z
    aget-object v16, v13, v8

    const-string v17, "LIKE"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_4

    .line 1816
    const/4 v10, 0x1

    .line 1818
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1840
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->convertOutsideDataToInsideData(Ljava/util/List;)V

    .line 1842
    aget-object v16, v13, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->checkParameterForIntegerType(Ljava/lang/String;Ljava/util/List;)V

    .line 1843
    aget-object v16, v13, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->checkParameterForTextType(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1845
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->makeWhereReplaceString(ILjava/util/List;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1789
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1819
    :cond_4
    aget-object v16, v13, v8

    const-string v17, "IN"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_5

    .line 1822
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->checkParameterOperatorIn(Ljava/lang/String;)V

    .line 1824
    const-string v16, "("

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1825
    const-string v16, ")"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1827
    const-string v16, ","

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->makeSplitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1829
    .local v12, "temparray":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->checkParameterMaxSplitCount([Ljava/lang/String;)V

    .line 1831
    const/4 v11, 0x0

    :goto_3
    array-length v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v11, v0, :cond_3

    .line 1832
    aget-object v16, v12, v11

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1831
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1837
    .end local v12    # "temparray":[Ljava/lang/String;
    :cond_5
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1849
    .end local v5    # "cherechecklistsize":I
    .end local v6    # "datalist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "datastring":Ljava/lang/String;
    .end local v9    # "index":I
    .end local v10    # "islike":Z
    .end local v11    # "j":I
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1850
    .local v14, "wherebuilder":Ljava/lang/StringBuilder;
    const-string v16, "repeatFlag"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    const-string v16, " & "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1853
    const-string v16, " AND "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    const-string v16, "timerFinishFlag"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    const-string v16, " & "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1856
    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1857
    const-string v16, " AND "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1859
    .local v4, "builderlistsize":I
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v4, :cond_8

    .line 1860
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1861
    add-int/lit8 v16, v8, 0x1

    move/from16 v0, v16

    if-ge v0, v4, :cond_7

    .line 1862
    const-string v16, " AND "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1869
    :cond_8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1873
    return-object v15
.end method

.method private storeContentValues(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)Landroid/content/ContentValues;
    .locals 8
    .param p1, "aRecordData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .prologue
    .line 2775
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2776
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "scheduleType"

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2778
    const-string v4, "triggerTime"

    iget-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2780
    const-string v4, "repeatFlag"

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbRepeatFlag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2782
    const-string v4, "timerFinishFlag"

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimerFinishFlag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2784
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 2785
    const-string v4, "crid"

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2791
    :goto_0
    const-string v4, "history"

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbHistory:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2793
    const-string v4, "intentPackageName"

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    const-string v4, "intentClassName"

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentClassName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 2798
    const-string v4, "reservedPackageName"

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    :goto_1
    const-string v4, "reserveType"

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReserveType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2806
    const-string v4, "contentTitle"

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentTitle:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    const-string v4, "contentStartTime"

    iget-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentStartTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2810
    const-string v4, "contentEndTime"

    iget-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentEndTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2812
    const-string v4, "contentPlayTime"

    iget-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentPlayTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2814
    const-string v4, "contentPlayDate"

    iget-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentPlayDate:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2816
    const-string v4, "contentIndex"

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCntIndex:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    const-string v4, "contentMedia"

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbContentMedia:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2820
    const-string v4, "serviceId"

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbServiceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2822
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbSeriesId:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->makeDbSeriesIdFromSeriesIdArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2823
    .local v0, "dbsereisid":Ljava/lang/String;
    const-string v4, "seriesId"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    const-string v4, "work1"

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2827
    const-string v4, "work2"

    iget-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork2:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2829
    const-string v4, "work3"

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbWork3:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getClockFromMyself(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v2

    .line 2833
    .local v2, "secureclock":J
    const-string v4, "timeStamp"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2838
    return-object v1

    .line 2788
    .end local v0    # "dbsereisid":Ljava/lang/String;
    .end local v2    # "secureclock":J
    :cond_0
    const-string v4, "crid"

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2801
    :cond_1
    const-string v4, "reservedPackageName"

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method closeDatabase()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 606
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 608
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_0
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "SQLException e=%s%n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 613
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v2, -0x3eb

    const-string v3, "Database broken"

    invoke-direct {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method controlEndTransaction()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 707
    return-void
.end method

.method controlInTransaction()Z
    .locals 2

    .prologue
    .line 721
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    .line 725
    .local v0, "result":Z
    return v0
.end method

.method controlStartTransaction()V
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 689
    return-void
.end method

.method controlsetTransactionSuccessful()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 744
    return-void
.end method

.method deleteAndUpdatePastTimeScheduleData(J)I
    .locals 11
    .param p1, "aTriggerTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 1312
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 1314
    const/4 v0, 0x0

    .line 1317
    .local v0, "count":I
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "triggerTime <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "repeatFlag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " & "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "timerFinishFlag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " & "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "history"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1328
    .local v5, "where":Ljava/lang/String;
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "scheduleListTbl"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "triggerTime <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "repeatFlag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " & "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "timerFinishFlag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " & "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "history"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1338
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1339
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "timerFinishFlag"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1341
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getClockFromMyself(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v2

    .line 1342
    .local v2, "secureclock":J
    const-string v6, "timeStamp"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1347
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "scheduleListTbl"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    add-int/2addr v0, v6

    .line 1361
    return v0

    .line 1349
    .end local v2    # "secureclock":J
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v5    # "where":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1350
    .local v1, "e":Landroid/database/SQLException;
    const-string v6, "SQLException e=%s%n"

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1352
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v7, -0x3eb

    const-string v8, "Database broken"

    invoke-direct {v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v6
.end method

.method deleteExpirationOfSeriesCrid(JJ)I
    .locals 7
    .param p1, "aContentEndTime"    # J
    .param p3, "aExpiredtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 2493
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 2494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduleType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contentEndTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "timeStamp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2506
    .local v2, "where":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2509
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "scheduleListTbl"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2522
    return v0

    .line 2510
    :catch_0
    move-exception v1

    .line 2511
    .local v1, "e":Landroid/database/SQLException;
    const-string v3, "SQLException e=%s%n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2513
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v4, -0x3eb

    const-string v5, "Database broken"

    invoke-direct {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method deleteScheduleData(J)I
    .locals 7
    .param p1, "aId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 1114
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 1116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1120
    .local v2, "where":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1123
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "scheduleListTbl"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1136
    return v0

    .line 1124
    :catch_0
    move-exception v1

    .line 1125
    .local v1, "e":Landroid/database/SQLException;
    const-string v3, "SQLException e=%s%n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v4, -0x3eb

    const-string v5, "Database broken"

    invoke-direct {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method deleteScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;II)I
    .locals 6
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aRepeatFlag"    # I
    .param p3, "aFinishFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 1214
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 1216
    invoke-direct {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isEnableRepeatAndFinishFlag(II)V

    .line 1218
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->createWhereQuery(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;II)Ljava/lang/String;

    move-result-object v2

    .line 1222
    .local v2, "where":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1225
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "scheduleListTbl"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1238
    return v0

    .line 1226
    :catch_0
    move-exception v1

    .line 1227
    .local v1, "e":Landroid/database/SQLException;
    const-string v3, "SQLException e=%s%n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1229
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v4, -0x3eb

    const-string v5, "Database broken"

    invoke-direct {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method deleteScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;II)I
    .locals 6
    .param p1, "aSearchKeyword"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .param p2, "aRepeatFlag"    # I
    .param p3, "aFinishFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 1264
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 1266
    invoke-direct {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isEnableRepeatAndFinishFlag(II)V

    .line 1268
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->createWhereQuery(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;II)Ljava/lang/String;

    move-result-object v2

    .line 1272
    .local v2, "where":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1275
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "scheduleListTbl"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1288
    return v0

    .line 1276
    :catch_0
    move-exception v1

    .line 1277
    .local v1, "e":Landroid/database/SQLException;
    const-string v3, "SQLException e=%s%n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1279
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v4, -0x3eb

    const-string v5, "Database broken"

    invoke-direct {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method deleteScheduleDataNoCommit(J)V
    .locals 7
    .param p1, "aId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    const/16 v6, -0x3eb

    .line 1156
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlInTransaction()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1157
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const-string v5, "Incorrect transaction"

    invoke-direct {v4, v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1161
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1165
    .local v3, "where":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1167
    .local v2, "statement":Landroid/database/sqlite/SQLiteStatement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1168
    .local v1, "sql":Ljava/lang/StringBuilder;
    const-string v4, "DELETE FROM "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    const-string v4, "scheduleListTbl"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    const-string v4, " WHERE "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 1175
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    if-eqz v2, :cond_1

    .line 1183
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1189
    :cond_1
    return-void

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v4, "SQLException e=%s%n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v5, -0x3eb

    const-string v6, "Database broken"

    invoke-direct {v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1182
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 1183
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v4
.end method

.method existDatabaseFile()Z
    .locals 4

    .prologue
    .line 662
    const/4 v1, 0x0

    .line 663
    .local v1, "result":Z
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->serviceContext:Landroid/content/Context;

    const-string v3, "scheduleList.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 664
    .local v0, "dbfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 665
    const/4 v1, 0x1

    .line 670
    :cond_0
    return v1
.end method

.method getExpirationOfSeriesCRID(JJ)[Ljava/lang/String;
    .locals 9
    .param p1, "aContentEndTime"    # J
    .param p3, "aExpiredtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2428
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 2429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "crid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "scheduleListTbl"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "scheduleType"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x800

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "contentEndTime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "timeStamp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2443
    .local v5, "sql":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 2444
    .local v2, "cursor":Landroid/database/Cursor;
    new-array v1, v8, [Ljava/lang/String;

    .line 2446
    .local v1, "cridArray":[Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2447
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2448
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2453
    .local v0, "count":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2454
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 2455
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 2456
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2454
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2464
    .end local v0    # "count":I
    .end local v4    # "i":I
    :cond_0
    if-eqz v2, :cond_1

    .line 2465
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2471
    :cond_1
    return-object v1

    .line 2459
    :catch_0
    move-exception v3

    .line 2460
    .local v3, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v6, "SQLException e=%s%n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2461
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v7, -0x3eb

    const-string v8, "Database broken"

    invoke-direct {v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2464
    .end local v3    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_2

    .line 2465
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v6
.end method

.method getPastTimeScheduleData(JIILjava/util/List;Ljava/util/List;)I
    .locals 15
    .param p1, "aTriggerTime"    # J
    .param p3, "aRepeatFlag"    # I
    .param p4, "aFinishFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 1992
    .local p5, "aScheduleDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .local p6, "aRecordDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 1994
    if-nez p5, :cond_0

    if-nez p6, :cond_0

    .line 1996
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v11, -0x3e9

    const-string v12, "Illegal parameter"

    invoke-direct {v10, v11, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v10

    .line 2000
    :cond_0
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isEnableRepeatAndFinishFlag(II)V

    .line 2002
    const-string v7, "SELECT * FROM scheduleListTbl"

    .line 2003
    .local v7, "select":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " WHERE triggerTime <= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "repeatFlag"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " & "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "timerFinishFlag"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " & "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2010
    .local v9, "where":Ljava/lang/String;
    const-string v6, " ORDER BY triggerTime"

    .line 2011
    .local v6, "order":Ljava/lang/String;
    const-string v5, " LIMIT 6000"

    .line 2012
    .local v5, "limit":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2016
    .local v8, "sql":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2017
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 2020
    .local v2, "count":I
    :try_start_0
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2021
    if-eqz p5, :cond_1

    .line 2024
    move-object/from16 v0, p5

    invoke-direct {p0, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->extractScheduleDataFromCursor(Landroid/database/Cursor;Ljava/util/List;)V

    .line 2026
    :cond_1
    if-eqz p6, :cond_2

    .line 2030
    move-object/from16 v0, p6

    invoke-direct {p0, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->extractScheduleRecordFromCursor(Landroid/database/Cursor;Ljava/util/List;)V

    .line 2033
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2041
    if-eqz v3, :cond_3

    .line 2042
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2051
    :cond_3
    return v2

    .line 2034
    :catch_0
    move-exception v4

    .line 2035
    .local v4, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v10, "SQLException e=%s%n"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2037
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v11, -0x3eb

    const-string v12, "Database broken"

    invoke-direct {v10, v11, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2041
    .end local v4    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v10

    if-eqz v3, :cond_4

    .line 2042
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v10
.end method

.method getSameTimeScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;JIILjava/util/List;)I
    .locals 14
    .param p1, "aSearchKeyword"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .param p2, "aTriggerTime"    # J
    .param p4, "aRepeatFlag"    # I
    .param p5, "aFinishFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;",
            "JII",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 2084
    .local p6, "aRecordDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 2086
    if-nez p6, :cond_0

    .line 2088
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v11, -0x3e9

    const-string v12, "Illegal parameter"

    invoke-direct {v10, v11, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v10

    .line 2092
    :cond_0
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isEnableRepeatAndFinishFlag(II)V

    .line 2094
    const-string v7, "SELECT * FROM scheduleListTbl"

    .line 2095
    .local v7, "select":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " WHERE triggerTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, p1, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->createWhereQuery(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2099
    .local v9, "where":Ljava/lang/String;
    const-string v6, " ORDER BY triggerTime"

    .line 2100
    .local v6, "order":Ljava/lang/String;
    const-string v5, " LIMIT 6000"

    .line 2101
    .local v5, "limit":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2105
    .local v8, "sql":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2106
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 2109
    .local v2, "count":I
    :try_start_0
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2113
    move-object/from16 v0, p6

    invoke-direct {p0, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->extractScheduleRecordFromCursor(Landroid/database/Cursor;Ljava/util/List;)V

    .line 2115
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2123
    if-eqz v3, :cond_1

    .line 2124
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2133
    :cond_1
    return v2

    .line 2116
    :catch_0
    move-exception v4

    .line 2117
    .local v4, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v10, "SQLException e=%s%n"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2119
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v11, -0x3eb

    const-string v12, "Database broken"

    invoke-direct {v10, v11, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2123
    .end local v4    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v10

    if-eqz v3, :cond_2

    .line 2124
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v10
.end method

.method getScheduleData(JLjava/util/List;Ljava/util/List;)I
    .locals 11
    .param p1, "aId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 1390
    .local p3, "aScheduleDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .local p4, "aRecordDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 1392
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 1394
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v9, -0x3e9

    const-string v10, "Illegal parameter"

    invoke-direct {v8, v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v8

    .line 1398
    :cond_0
    const-string v5, "SELECT * FROM scheduleListTbl"

    .line 1399
    .local v5, "select":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " WHERE _id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1401
    .local v7, "where":Ljava/lang/String;
    const-string v4, " ORDER BY triggerTime"

    .line 1402
    .local v4, "order":Ljava/lang/String;
    const-string v3, " LIMIT 6000"

    .line 1403
    .local v3, "limit":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1407
    .local v6, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1408
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1411
    .local v0, "count":I
    :try_start_0
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1412
    if-eqz p3, :cond_1

    .line 1415
    invoke-direct {p0, v1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->extractScheduleDataFromCursor(Landroid/database/Cursor;Ljava/util/List;)V

    .line 1417
    :cond_1
    if-eqz p4, :cond_2

    .line 1421
    invoke-direct {p0, v1, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->extractScheduleRecordFromCursor(Landroid/database/Cursor;Ljava/util/List;)V

    .line 1424
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1432
    if-eqz v1, :cond_3

    .line 1433
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1442
    :cond_3
    return v0

    .line 1425
    :catch_0
    move-exception v2

    .line 1426
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v8, "SQLException e=%s%n"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1428
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v9, -0x3eb

    const-string v10, "Database broken"

    invoke-direct {v8, v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1432
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_4

    .line 1433
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v8
.end method

.method getScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;IILjava/util/List;Ljava/util/List;)I
    .locals 12
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aRepeatFlag"    # I
    .param p3, "aFinishFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 1477
    .local p4, "aScheduleDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .local p5, "aRecordDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 1479
    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 1481
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v10, -0x3e9

    const-string v11, "Illegal parameter"

    invoke-direct {v9, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v9

    .line 1485
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isEnableRepeatAndFinishFlag(II)V

    .line 1487
    const-string v6, "SELECT * FROM scheduleListTbl"

    .line 1488
    .local v6, "select":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->createWhereQuery(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1490
    .local v8, "where":Ljava/lang/String;
    const-string v5, " ORDER BY triggerTime"

    .line 1491
    .local v5, "order":Ljava/lang/String;
    const-string v4, " LIMIT 6000"

    .line 1492
    .local v4, "limit":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1496
    .local v7, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1497
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1500
    .local v1, "count":I
    :try_start_0
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1501
    if-eqz p4, :cond_1

    .line 1504
    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->extractScheduleDataFromCursor(Landroid/database/Cursor;Ljava/util/List;)V

    .line 1506
    :cond_1
    if-eqz p5, :cond_2

    .line 1510
    move-object/from16 v0, p5

    invoke-direct {p0, v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->extractScheduleRecordFromCursor(Landroid/database/Cursor;Ljava/util/List;)V

    .line 1513
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1521
    if-eqz v2, :cond_3

    .line 1522
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1531
    :cond_3
    return v1

    .line 1514
    :catch_0
    move-exception v3

    .line 1515
    .local v3, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v9, "SQLException e=%s%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1517
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v10, -0x3eb

    const-string v11, "Database broken"

    invoke-direct {v9, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1521
    .end local v3    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_4

    .line 1522
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v9
.end method

.method getScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;IILjava/util/List;Ljava/util/List;)I
    .locals 12
    .param p1, "aSearchKeyword"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .param p2, "aRepeatFlag"    # I
    .param p3, "aFinishFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 1566
    .local p4, "aScheduleDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .local p5, "aRecordDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 1568
    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 1570
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v10, -0x3e9

    const-string v11, "Illegal parameter"

    invoke-direct {v9, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v9

    .line 1574
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isEnableRepeatAndFinishFlag(II)V

    .line 1576
    const-string v6, "SELECT * FROM scheduleListTbl"

    .line 1577
    .local v6, "select":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->createWhereQuery(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1579
    .local v8, "where":Ljava/lang/String;
    const-string v5, " ORDER BY triggerTime"

    .line 1580
    .local v5, "order":Ljava/lang/String;
    const-string v4, " LIMIT 6000"

    .line 1581
    .local v4, "limit":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1585
    .local v7, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1586
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1589
    .local v1, "count":I
    :try_start_0
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1590
    if-eqz p4, :cond_1

    .line 1593
    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->extractScheduleDataFromCursor(Landroid/database/Cursor;Ljava/util/List;)V

    .line 1595
    :cond_1
    if-eqz p5, :cond_2

    .line 1599
    move-object/from16 v0, p5

    invoke-direct {p0, v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->extractScheduleRecordFromCursor(Landroid/database/Cursor;Ljava/util/List;)V

    .line 1602
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1610
    if-eqz v2, :cond_3

    .line 1611
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1620
    :cond_3
    return v1

    .line 1603
    :catch_0
    move-exception v3

    .line 1604
    .local v3, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v9, "SQLException e=%s%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1606
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v10, -0x3eb

    const-string v11, "Database broken"

    invoke-direct {v9, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1610
    .end local v3    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_4

    .line 1611
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v9
.end method

.method getScheduleDataCount(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;II)I
    .locals 10
    .param p1, "aSearchKeyword"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .param p2, "aRepeatFlag"    # I
    .param p3, "aFinishFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 2368
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 2370
    invoke-direct {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isEnableRepeatAndFinishFlag(II)V

    .line 2373
    const-string v4, "SELECT _id FROM scheduleListTbl"

    .line 2376
    .local v4, "select":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->createWhereQuery(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2378
    .local v6, "where":Ljava/lang/String;
    const-string v3, " LIMIT 6000"

    .line 2379
    .local v3, "limit":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2383
    .local v5, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2384
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 2387
    .local v0, "count":I
    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2388
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2390
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2399
    :cond_0
    if-eqz v1, :cond_1

    .line 2400
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2409
    :cond_1
    return v0

    .line 2392
    :catch_0
    move-exception v2

    .line 2393
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v7, "SQLException e=%s%n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2395
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v8, -0x3eb

    const-string v9, "Database broken"

    invoke-direct {v7, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2399
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v7

    if-eqz v1, :cond_2

    .line 2400
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v7
.end method

.method getScheduleDataFromQuery(Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;)I
    .locals 17
    .param p1, "aSearchString"    # Ljava/lang/String;
    .param p2, "aSortString"    # Ljava/lang/String;
    .param p3, "aFlag"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 1653
    .local p4, "aScheduleDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v14, v0

    const/4 v15, 0x2

    if-eq v14, v15, :cond_1

    .line 1655
    :cond_0
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v15, -0x3e9

    const-string v16, "Illegal parameter"

    invoke-direct/range {v14 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v14

    .line 1658
    :cond_1
    const/4 v9, 0x0

    .line 1659
    .local v9, "repeatflag":I
    const/4 v5, 0x1

    .line 1663
    .local v5, "finishflag":I
    const/4 v14, 0x0

    :try_start_0
    aget v14, p3, v14

    const/4 v15, 0x1

    aget v15, p3, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->setWhereQuery(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v13

    .line 1664
    .local v13, "whereQuery":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->setOrderQuery(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1669
    .local v8, "orderQuery":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 1671
    if-nez p4, :cond_2

    .line 1673
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v15, -0x3e9

    const-string v16, "Illegal parameter"

    invoke-direct/range {v14 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v14

    .line 1665
    .end local v8    # "orderQuery":Ljava/lang/String;
    .end local v13    # "whereQuery":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1666
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v15, "Illegal parameter"

    invoke-direct {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1677
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    .restart local v8    # "orderQuery":Ljava/lang/String;
    .restart local v13    # "whereQuery":Ljava/lang/String;
    :cond_2
    if-nez v13, :cond_3

    .line 1679
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v15, -0x3e9

    const-string v16, "Illegal parameter"

    invoke-direct/range {v14 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v14

    .line 1683
    :cond_3
    const-string v10, "SELECT * FROM scheduleListTbl"

    .line 1684
    .local v10, "select":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " WHERE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1686
    .local v12, "where":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 1688
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "triggerTime"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ASC"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1694
    .local v7, "order":Ljava/lang/String;
    :goto_0
    const-string v6, " LIMIT 6000"

    .line 1695
    .local v6, "limit":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1699
    .local v11, "sql":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1700
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1703
    .local v2, "count":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v15, 0x0

    invoke-virtual {v14, v11, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1704
    if-eqz p4, :cond_4

    .line 1707
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->extractScheduleDataFromCursor(Landroid/database/Cursor;Ljava/util/List;)V

    .line 1710
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1711
    if-gez v2, :cond_7

    .line 1712
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SQLException cursor.getCount = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1714
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v15, -0x3eb

    const-string v16, "Database broken"

    invoke-direct/range {v14 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1717
    :catch_1
    move-exception v4

    .line 1718
    .local v4, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v14, "SQLException e=%s%n"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1720
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v15, -0x3eb

    const-string v16, "Database broken"

    invoke-direct/range {v14 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1724
    .end local v4    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v14

    if-eqz v3, :cond_5

    .line 1725
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v14

    .line 1692
    .end local v2    # "count":I
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v6    # "limit":Ljava/lang/String;
    .end local v7    # "order":Ljava/lang/String;
    .end local v11    # "sql":Ljava/lang/String;
    :cond_6
    const-string v7, " ORDER BY triggerTime"

    .restart local v7    # "order":Ljava/lang/String;
    goto :goto_0

    .line 1724
    .restart local v2    # "count":I
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "limit":Ljava/lang/String;
    .restart local v11    # "sql":Ljava/lang/String;
    :cond_7
    if-eqz v3, :cond_8

    .line 1725
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1734
    :cond_8
    return v2
.end method

.method getSeriesIdScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/lang/String;IILjava/util/List;)I
    .locals 12
    .param p1, "aSearchKeyword"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .param p2, "aSeriesId"    # Ljava/lang/String;
    .param p3, "aRepeatFlag"    # I
    .param p4, "aFinishFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 2166
    .local p5, "aRecordDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;>;"
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 2168
    if-eqz p5, :cond_0

    if-nez p2, :cond_1

    .line 2170
    :cond_0
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v10, -0x3e9

    const-string v11, "Illegal parameter"

    invoke-direct {v9, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v9

    .line 2174
    :cond_1
    move/from16 v0, p4

    invoke-direct {p0, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isEnableRepeatAndFinishFlag(II)V

    .line 2177
    if-eqz p2, :cond_2

    .line 2178
    const-string v9, "crid://"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 2179
    const-string p2, "[single]"

    .line 2184
    :cond_2
    const-string v6, "SELECT * FROM scheduleListTbl"

    .line 2185
    .local v6, "select":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " WHERE seriesId LIKE \'%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-direct {p0, p1, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->createWhereQuery(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2191
    .local v8, "where":Ljava/lang/String;
    const-string v5, " ORDER BY triggerTime"

    .line 2192
    .local v5, "order":Ljava/lang/String;
    const-string v4, " LIMIT 6000"

    .line 2193
    .local v4, "limit":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2197
    .local v7, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2198
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 2201
    .local v1, "count":I
    :try_start_0
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2205
    move-object/from16 v0, p5

    invoke-direct {p0, v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->extractScheduleRecordFromCursor(Landroid/database/Cursor;Ljava/util/List;)V

    .line 2207
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2215
    if-eqz v2, :cond_3

    .line 2216
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2225
    :cond_3
    return v1

    .line 2208
    :catch_0
    move-exception v3

    .line 2209
    .local v3, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v9, "SQLException e=%s%n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2211
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v10, -0x3eb

    const-string v11, "Database broken"

    invoke-direct {v9, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2215
    .end local v3    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_4

    .line 2216
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v9
.end method

.method getSeriesIdScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/lang/String;II)Ljava/util/Map;
    .locals 19
    .param p1, "aSearchKeyword"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .param p2, "aSeriesId"    # Ljava/lang/String;
    .param p3, "aRepeatFlag"    # I
    .param p4, "aFinishFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 2257
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 2259
    if-nez p2, :cond_0

    .line 2261
    new-instance v16, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v17, -0x3e9

    const-string v18, "Illegal parameter"

    invoke-direct/range {v16 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v16

    .line 2265
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isEnableRepeatAndFinishFlag(II)V

    .line 2268
    if-eqz p2, :cond_1

    .line 2269
    const-string v16, "crid://"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 2270
    const-string p2, "[single]"

    .line 2274
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SELECT "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_id"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "seriesId"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " FROM "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "scheduleListTbl"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " WHERE "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "seriesId"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "LIKE"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "%"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "%"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " AND "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->createWhereQuery(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ORDER BY "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "triggerTime"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " LIMIT "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1770

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2289
    .local v15, "sql":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 2290
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 2291
    .local v5, "count":I
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 2293
    .local v12, "seriesChildMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2295
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 2299
    if-gtz v5, :cond_3

    .line 2332
    if-eqz v6, :cond_2

    .line 2333
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2342
    :cond_2
    :goto_0
    return-object v12

    .line 2305
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 2306
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v5, :cond_7

    .line 2307
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2308
    .local v7, "dbseriesId":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2309
    .local v13, "setValue":[Ljava/lang/String;
    if-nez v7, :cond_5

    .line 2310
    const/4 v13, 0x0

    .line 2314
    :goto_2
    if-eqz v13, :cond_6

    .line 2315
    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_3
    if-ge v10, v11, :cond_6

    aget-object v14, v4, v10

    .line 2316
    .local v14, "setValueElem":Ljava/lang/String;
    const-string v16, "[single]"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 2317
    const-string v16, "crid://"

    .line 2315
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2312
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v14    # "setValueElem":Ljava/lang/String;
    :cond_5
    const-string v16, " "

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 2321
    :cond_6
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v12, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2322
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2306
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2332
    .end local v7    # "dbseriesId":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v13    # "setValue":[Ljava/lang/String;
    :cond_7
    if-eqz v6, :cond_2

    .line 2333
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2325
    :catch_0
    move-exception v8

    .line 2326
    .local v8, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v16, "SQLException e=%s%n"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2328
    new-instance v16, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v17, -0x3eb

    const-string v18, "Database broken"

    invoke-direct/range {v16 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2332
    .end local v8    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v16

    if-eqz v6, :cond_8

    .line 2333
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v16
.end method

.method isDatabaseOpen()Z
    .locals 2

    .prologue
    .line 636
    const/4 v0, 0x0

    .line 638
    .local v0, "result":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 639
    const/4 v0, 0x1

    .line 644
    :cond_0
    return v0
.end method

.method openDatabase()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 571
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 573
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseOpenHelperSv;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->serviceContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseOpenHelperSv;-><init>(Landroid/content/Context;)V

    .line 574
    .local v1, "helper":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseOpenHelperSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseOpenHelperSv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 575
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;

    invoke-direct {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->columnIndex:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    .end local v1    # "helper":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseOpenHelperSv;
    :cond_0
    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Landroid/database/SQLException;
    const-string v2, "SQLException e=%s%n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v3, -0x3eb

    const-string v4, "Database broken"

    invoke-direct {v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method reconstructionScheduleDatabase()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    const/16 v5, -0x3eb

    .line 1072
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 1075
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->closeDatabase()V

    .line 1076
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->serviceContext:Landroid/content/Context;

    const-string v3, "scheduleList.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1077
    .local v0, "dbfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1078
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1080
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v3, -0x3eb

    const-string v4, "Database broken"

    invoke-direct {v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    .end local v0    # "dbfile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1086
    .local v1, "e":Landroid/database/SQLException;
    const-string v2, "SQLException e=%s%n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1088
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const-string v3, "Database broken"

    invoke-direct {v2, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1084
    .end local v1    # "e":Landroid/database/SQLException;
    .restart local v0    # "dbfile":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->openDatabase()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1094
    return-void
.end method

.method setScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I
    .locals 7
    .param p1, "aRecordData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 766
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->storeContentValues(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)Landroid/content/ContentValues;

    move-result-object v3

    .line 770
    .local v3, "values":Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 772
    .local v2, "result":I
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "scheduleListTbl"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 774
    .local v0, "recordid":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 776
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v5, -0x3eb

    const-string v6, "Database broken"

    invoke-direct {v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v4

    .line 779
    :cond_0
    long-to-int v2, v0

    .line 786
    return v2
.end method

.method setScheduleDataNoCommit(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I
    .locals 19
    .param p1, "aRecordData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 806
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlInTransaction()Z

    move-result v16

    if-nez v16, :cond_0

    .line 807
    new-instance v16, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v17, -0x3eb

    const-string v18, "Incorrect transaction"

    invoke-direct/range {v16 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v16

    .line 811
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->storeContentValues(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)Landroid/content/ContentValues;

    move-result-object v7

    .line 816
    .local v7, "initialValues":Landroid/content/ContentValues;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "INSERT INTO "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "scheduleListTbl"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 819
    .local v13, "sql":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    .local v15, "values":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    .line 821
    .local v5, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 822
    .local v3, "entriesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v16, "("

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    const/4 v8, 0x0

    .line 825
    .local v8, "needSeparator":Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 826
    if-eqz v8, :cond_1

    .line 827
    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :cond_1
    const/4 v8, 0x1

    .line 831
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 832
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string v16, "?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 835
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " VALUES "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    const/4 v14, 0x0

    .line 840
    .local v14, "statement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v9, 0x0

    .line 841
    .local v9, "result":I
    const-wide/16 v10, 0x0

    .line 843
    .local v10, "recordid":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v14

    .line 845
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v12

    .line 846
    .local v12, "size":I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 847
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v12, :cond_3

    .line 848
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 849
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v16, v6, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 847
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 852
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v10, v0

    .line 859
    if-eqz v14, :cond_4

    .line 860
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 863
    :cond_4
    const-wide/16 v16, 0x0

    cmp-long v16, v10, v16

    if-gtz v16, :cond_6

    .line 865
    new-instance v16, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v17, -0x3eb

    const-string v18, "Database broken"

    invoke-direct/range {v16 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v16

    .line 853
    .end local v6    # "i":I
    .end local v12    # "size":I
    :catch_0
    move-exception v2

    .line 854
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v16, "SQLException e=%s%n"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v2, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 856
    new-instance v16, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v17, -0x3eb

    const-string v18, "Database broken"

    invoke-direct/range {v16 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v16

    if-eqz v14, :cond_5

    .line 860
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    throw v16

    .line 868
    .restart local v6    # "i":I
    .restart local v12    # "size":I
    :cond_6
    long-to-int v9, v10

    .line 875
    return v9
.end method

.method updateRepeatScheduleOnPause(ILjava/lang/String;)I
    .locals 10
    .param p1, "aScheduleType"    # I
    .param p2, "aOnPause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 2542
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 2544
    const/4 v0, 0x0

    .line 2546
    .local v0, "count":I
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scheduleType"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " & "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "repeatFlag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " & "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2553
    .local v5, "where":Ljava/lang/StringBuilder;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2554
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "work3"

    invoke-virtual {v4, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getClockFromMyself(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v2

    .line 2556
    .local v2, "secureclock":J
    const-string v6, "timeStamp"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2561
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "scheduleListTbl"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2576
    return v0

    .line 2564
    .end local v2    # "secureclock":J
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v5    # "where":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 2565
    .local v1, "e":Landroid/database/SQLException;
    const-string v6, "SQLException e=%s%n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2567
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v7, -0x3eb

    const-string v8, "Database broken"

    invoke-direct {v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v6
.end method

.method updateScheduleData(JLcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I
    .locals 7
    .param p1, "aId"    # J
    .param p3, "aRecordData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 948
    invoke-direct {p0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->storeContentValues(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)Landroid/content/ContentValues;

    move-result-object v2

    .line 950
    .local v2, "values":Landroid/content/ContentValues;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 954
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x0

    .line 957
    .local v1, "result":I
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "scheduleListTbl"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 970
    return v1

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "e":Landroid/database/SQLException;
    const-string v4, "SQLException e=%s%n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 961
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v5, -0x3eb

    const-string v6, "Database broken"

    invoke-direct {v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method updateScheduleDataNoCommit(JLcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I
    .locals 17
    .param p1, "aId"    # J
    .param p3, "aRecordData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 993
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->controlInTransaction()Z

    move-result v14

    if-nez v14, :cond_0

    .line 994
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v15, -0x3eb

    const-string v16, "Incorrect transaction"

    invoke-direct/range {v14 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v14

    .line 998
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->storeContentValues(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)Landroid/content/ContentValues;

    move-result-object v12

    .line 1000
    .local v12, "values":Landroid/content/ContentValues;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1004
    .local v13, "where":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1006
    .local v8, "result":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1007
    .local v10, "sql":Ljava/lang/StringBuilder;
    const-string v14, "UPDATE "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const-string v14, "scheduleListTbl"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    const-string v14, " SET "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {v12}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    .line 1011
    .local v6, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1012
    .local v4, "entriesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1013
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1014
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    const-string v14, "=?"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1017
    const-string v14, ", "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1020
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v14, " WHERE "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    const/4 v11, 0x0

    .line 1024
    .local v11, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 1025
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v9

    .line 1026
    .local v9, "size":I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1027
    const/4 v2, 0x1

    .line 1028
    .local v2, "bindArg":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v9, :cond_3

    .line 1029
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1030
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v11, v2, v14}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1031
    add-int/lit8 v2, v2, 0x1

    .line 1028
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1035
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    long-to-int v8, v14

    .line 1042
    if-eqz v11, :cond_4

    .line 1043
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1052
    :cond_4
    return v8

    .line 1036
    .end local v2    # "bindArg":I
    .end local v7    # "i":I
    .end local v9    # "size":I
    :catch_0
    move-exception v3

    .line 1037
    .local v3, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v14, "SQLException e=%s%n"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1039
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v15, -0x3eb

    const-string v16, "Database broken"

    invoke-direct/range {v14 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1042
    .end local v3    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v14

    if-eqz v11, :cond_5

    .line 1043
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    throw v14
.end method

.method updateScheduleSeriesId(J[Ljava/lang/String;)I
    .locals 11
    .param p1, "aId"    # J
    .param p3, "aSeriesId"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
        }
    .end annotation

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->isDatabaseOpenEx()V

    .line 900
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 901
    .local v3, "values":Landroid/content/ContentValues;
    invoke-direct {p0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->makeDbSeriesIdFromSeriesIdArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "dbsereisid":Ljava/lang/String;
    const-string v7, "seriesId"

    invoke-virtual {v3, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->generalInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getClockFromMyself(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v4

    .line 904
    .local v4, "secureClock":J
    const-string v7, "timeStamp"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 905
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 909
    .local v6, "where":Ljava/lang/String;
    const/4 v2, 0x0

    .line 911
    .local v2, "result":I
    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "scheduleListTbl"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v3, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 923
    return v2

    .line 912
    :catch_0
    move-exception v1

    .line 913
    .local v1, "e":Landroid/database/SQLException;
    const-string v7, "SQLException e=%s%n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 914
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;

    const/16 v8, -0x3eb

    const-string v9, "Database broken"

    invoke-direct {v7, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;-><init>(ILjava/lang/String;)V

    throw v7
.end method
