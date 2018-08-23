.class public Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
.source "MmbFwServiceSessionSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$1;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$MmbFwStateSv;
    }
.end annotation


# static fields
.field private static final LIBRARY_NOTIFICATIONS:[I

.field private static final sSessions:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mApplicationKey:Ljava/lang/String;

.field private final mNotificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$MmbFwStateSv;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessId:I

.field private final mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    aput-object v1, v0, v3

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistorySessionSv;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendSessionSv;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    .line 95
    new-array v0, v4, [I

    const/high16 v1, 0x10000

    aput v1, v0, v3

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->LIBRARY_NOTIFICATIONS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 11
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aProcessId"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mNotificationMap:Ljava/util/Map;

    .line 112
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->LIBRARY_NOTIFICATIONS:[I

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget v4, v0, v3

    .line 113
    .local v4, "id":I
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mNotificationMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$MmbFwStateSv;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$MmbFwStateSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$1;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v4    # "id":I
    :cond_0
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mProcessId:I

    .line 138
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mSessionMap:Ljava/util/Map;

    .line 139
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    array-length v7, v7

    if-ge v2, v7, :cond_1

    .line 140
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    aget-object v1, v7, v2

    .line 141
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->createSession(Ljava/lang/Class;Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    move-result-object v6

    .line 142
    .local v6, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    invoke-direct {p0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->addSession(Ljava/lang/Class;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;)V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    :cond_1
    return-void
.end method

.method private addSession(Ljava/lang/Class;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;)V
    .locals 1
    .param p2, "aSession"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    .line 229
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_0
    return-void
.end method

.method private createSession(Ljava/lang/Class;Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    .locals 9
    .param p2, "aContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;"
        }
    .end annotation

    .prologue
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 189
    const/4 v3, 0x0

    .line 191
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 192
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5

    .line 209
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v3

    .line 193
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "error create %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 196
    .local v2, "e":Ljava/lang/InstantiationException;
    const-string v4, "error create %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 197
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "error create %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 199
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "error create %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v4, "error create %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_5
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "error create %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanupSession()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 337
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    array-length v0, v0

    add-int/lit8 v10, v0, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_1

    .line 338
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    aget-object v7, v0, v10

    .line 339
    .local v7, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    .line 340
    .local v12, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    if-eqz v12, :cond_0

    .line 342
    :try_start_0
    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->cleanupSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 343
    :catch_0
    move-exception v9

    .line 344
    .local v9, "err":Ljava/lang/Exception;
    const-string v0, "error at %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 349
    .end local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "err":Ljava/lang/Exception;
    .end local v12    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mNotificationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 350
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$MmbFwStateSv;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$MmbFwStateSv;

    .line 351
    .local v13, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$MmbFwStateSv;
    iget-boolean v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$MmbFwStateSv;->mState:Z

    if-eqz v0, :cond_2

    .line 352
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 353
    iput-boolean v2, v13, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$MmbFwStateSv;->mState:Z

    goto :goto_2

    .line 357
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$MmbFwStateSv;>;"
    .end local v13    # "state":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$MmbFwStateSv;
    :cond_3
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->cleanupSession()V

    .line 361
    return-void
.end method

.method public getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    .locals 3

    .prologue
    .line 672
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getSession(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    move-result-object v1

    .local v1, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    move-object v0, v1

    .line 673
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    .line 677
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    return-object v0
.end method

.method public getConflictSession()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    .locals 3

    .prologue
    .line 648
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getSession(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    move-result-object v1

    .local v1, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    move-object v0, v1

    .line 649
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    .line 653
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    return-object v0
.end method

.method public getContentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    .locals 3

    .prologue
    .line 696
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getSession(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    move-result-object v1

    .local v1, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    move-object v0, v1

    .line 697
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    .line 701
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    return-object v0
.end method

.method public getHistorySession()Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistorySessionSv;
    .locals 3

    .prologue
    .line 720
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistorySessionSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getSession(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    move-result-object v1

    .local v1, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    move-object v0, v1

    .line 721
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistorySessionSv;

    .line 725
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistorySessionSv;
    return-object v0
.end method

.method public getLogSession()Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;
    .locals 3

    .prologue
    .line 744
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getSession(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    move-result-object v1

    .local v1, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    move-object v0, v1

    .line 745
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;

    .line 749
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;
    return-object v0
.end method

.method public getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    .locals 3

    .prologue
    .line 768
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getSession(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    move-result-object v1

    .local v1, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    move-object v0, v1

    .line 769
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    .line 773
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    return-object v0
.end method

.method public getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    .locals 3

    .prologue
    .line 792
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getSession(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    move-result-object v1

    .local v1, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    move-object v0, v1

    .line 793
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    .line 797
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    return-object v0
.end method

.method public getProcessId()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mProcessId:I

    .line 169
    .local v0, "result":I
    return v0
.end method

.method public getReccontentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;
    .locals 3

    .prologue
    .line 1006
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getSession(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    move-result-object v1

    .local v1, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    move-object v0, v1

    .line 1007
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;

    .line 1011
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;
    return-object v0
.end method

.method public getRecordingSession()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;
    .locals 3

    .prologue
    .line 863
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getSession(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    move-result-object v1

    .local v1, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    move-object v0, v1

    .line 864
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;

    .line 868
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;
    return-object v0
.end method

.method public getScheduleSession()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;
    .locals 3

    .prologue
    .line 840
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getSession(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    move-result-object v1

    .local v1, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    move-object v0, v1

    .line 841
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;

    .line 845
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;
    return-object v0
.end method

.method public getServiceListSession()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    .locals 3

    .prologue
    .line 887
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getSession(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    move-result-object v1

    .local v1, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    move-object v0, v1

    .line 888
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;

    .line 892
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    return-object v0
.end method

.method public getSession(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    .line 254
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    if-nez v0, :cond_0

    .line 255
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 260
    :cond_0
    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .prologue
    .line 279
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 283
    .local v0, "result":I
    return v0
.end method

.method protected isMmbiMode()Z
    .locals 3

    .prologue
    .line 943
    const-string v1, "MMBI_APPLICATION_FOR_TMM"

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mApplicationKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 947
    .local v0, "result":Z
    return v0
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 8
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 615
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyBroadcastAction(Landroid/content/Intent;)V

    .line 616
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 617
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 618
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    .line 619
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    if-eqz v3, :cond_0

    .line 621
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyBroadcastAction(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 622
    :catch_0
    move-exception v1

    .line 623
    .local v1, "err":Ljava/lang/Exception;
    const-string v4, "error at %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 630
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    :cond_1
    return-void
.end method

.method public notifyOnCreate()V
    .locals 8

    .prologue
    .line 380
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyOnCreate()V

    .line 381
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 382
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 383
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    .line 384
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    if-eqz v3, :cond_0

    .line 386
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyOnCreate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    :catch_0
    move-exception v1

    .line 388
    .local v1, "err":Ljava/lang/Exception;
    const-string v4, "error at %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 395
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    :cond_1
    return-void
.end method

.method public notifyOnDestroy()V
    .locals 8

    .prologue
    .line 547
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyOnDestroy()V

    .line 548
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 549
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 550
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    .line 551
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    if-eqz v3, :cond_0

    .line 553
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyOnDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, "err":Ljava/lang/Exception;
    const-string v4, "error at %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 562
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    :cond_1
    return-void
.end method

.method public notifyOnPause()V
    .locals 8

    .prologue
    .line 481
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyOnPause()V

    .line 482
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 483
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 484
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    .line 485
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    if-eqz v3, :cond_0

    .line 487
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyOnPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 488
    :catch_0
    move-exception v1

    .line 489
    .local v1, "err":Ljava/lang/Exception;
    const-string v4, "error at %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 496
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    :cond_1
    return-void
.end method

.method public notifyOnRestart()V
    .locals 8

    .prologue
    .line 580
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyOnRestart()V

    .line 581
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 582
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 583
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    .line 584
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    if-eqz v3, :cond_0

    .line 586
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyOnRestart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 587
    :catch_0
    move-exception v1

    .line 588
    .local v1, "err":Ljava/lang/Exception;
    const-string v4, "error at %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 595
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    :cond_1
    return-void
.end method

.method public notifyOnResume()V
    .locals 8

    .prologue
    .line 448
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyOnResume()V

    .line 449
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 450
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 451
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    .line 452
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    if-eqz v3, :cond_0

    .line 454
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyOnResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    :catch_0
    move-exception v1

    .line 456
    .local v1, "err":Ljava/lang/Exception;
    const-string v4, "error at %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 463
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    :cond_1
    return-void
.end method

.method public notifyOnStart()V
    .locals 8

    .prologue
    .line 414
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyOnStart()V

    .line 415
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 416
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 417
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    .line 418
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    if-eqz v3, :cond_0

    .line 420
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyOnStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, "err":Ljava/lang/Exception;
    const-string v4, "error at %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 429
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    :cond_1
    return-void
.end method

.method public notifyOnStop()V
    .locals 8

    .prologue
    .line 514
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyOnStop()V

    .line 515
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 516
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 517
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    .line 518
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    if-eqz v3, :cond_0

    .line 520
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyOnStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, "err":Ljava/lang/Exception;
    const-string v4, "error at %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 529
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    :cond_1
    return-void
.end method

.method setApplicationMode(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 9
    .param p1, "aKey"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 910
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mApplicationKey:Ljava/lang/String;

    .line 912
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->isMmbiMode()Z

    move-result v3

    .line 913
    .local v3, "mode":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 914
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    aget-object v0, v5, v2

    .line 915
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    .line 916
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    if-eqz v4, :cond_0

    .line 918
    :try_start_0
    invoke-virtual {v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->notifyApplicationMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 919
    :catch_0
    move-exception v1

    .line 920
    .local v1, "err":Ljava/lang/Exception;
    const-string v5, "error at %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 928
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v4    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    :cond_1
    return-void
.end method

.method setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 8
    .param p1, "aMode"    # I
    .param p2, "aOnOff"    # Z
    .param p3, "aValue"    # I
    .param p4, "aTitle"    # Ljava/lang/String;
    .param p5, "aText"    # Ljava/lang/String;
    .param p6, "aIntent"    # Landroid/app/PendingIntent;
    .param p7, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 980
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 981
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mNotificationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$MmbFwStateSv;

    .line 982
    .local v7, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$MmbFwStateSv;
    if-eqz v7, :cond_0

    .line 983
    iput-boolean p2, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv$MmbFwStateSv;->mState:Z

    .line 988
    :cond_0
    return-void
.end method

.method public startupSession()V
    .locals 8

    .prologue
    .line 303
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->startupSession()V

    .line 304
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 305
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->sSessions:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 306
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;

    .line 307
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    if-eqz v3, :cond_0

    .line 309
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->startupSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "err":Ljava/lang/Exception;
    const-string v4, "error at %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 318
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
    :cond_1
    return-void
.end method
