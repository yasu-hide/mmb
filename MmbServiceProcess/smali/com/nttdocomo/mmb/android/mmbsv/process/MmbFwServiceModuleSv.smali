.class public Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
.source "MmbFwServiceModuleSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;
    }
.end annotation


# static fields
.field private static final sModules:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;",
            ">;"
        }
    .end annotation
.end field

.field private mRecodingAvailability:Z

.field private mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mModuleMap:Ljava/util/Map;

    .line 79
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_CLEANUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    iput-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    .line 104
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_CREATE:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    .line 105
    .local v4, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;

    move-result-object v3

    .line 106
    .local v3, "poInfo":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->hasRecordingFunction()Z

    move-result v5

    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mRecodingAvailability:Z

    .line 107
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 108
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    aget-object v0, v5, v1

    .line 109
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mRecodingAvailability:Z

    if-nez v5, :cond_1

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    if-eq v0, v5, :cond_0

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    if-ne v0, v5, :cond_1

    .line 107
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->createModule(Ljava/lang/Class;Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    move-result-object v2

    .line 114
    .local v2, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    if-eqz v2, :cond_0

    .line 115
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->addModule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;)V

    goto :goto_1

    .line 118
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    :cond_2
    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    .line 122
    return-void
.end method

.method private addModule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;)V
    .locals 2
    .param p1, "aModule"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mModuleMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    return-void
.end method

.method private createModule(Ljava/lang/Class;Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    .locals 9
    .param p2, "aContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;"
        }
    .end annotation

    .prologue
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 141
    const/4 v3, 0x0

    .line 143
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 144
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    move-object v3, v0

    .line 145
    check-cast p2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .end local p2    # "aContext":Landroid/content/Context;
    invoke-virtual {v3, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->setMainService(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5

    .line 162
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v3

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "error create %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/InstantiationException;
    const-string v4, "error create %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "error create %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "error create %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v4, "error create %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_5
    move-exception v2

    .line 157
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
.method public cleanupModule()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 353
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_SETUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    if-eq v4, v5, :cond_0

    .line 354
    const-string v4, "currentState is %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    :goto_0
    return-void

    .line 360
    :cond_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 361
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 362
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mModuleMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    .line 363
    .local v3, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    if-eqz v3, :cond_1

    .line 365
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->cleanupModule()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, "err":Ljava/lang/Exception;
    const-string v4, "error at  %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 371
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    :cond_2
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->cleanupModule()V

    .line 372
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_CLEANUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    goto :goto_0
.end method

.method public getModule(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;"
        }
    .end annotation

    .prologue
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 207
    if-nez p1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "class is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->canExport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    const-string v2, "currentState is %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mModuleMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    .line 214
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    if-nez v0, :cond_2

    .line 215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "class %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_2
    return-object v0
.end method

.method public hasRecordingFunction()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mRecodingAvailability:Z

    return v0
.end method

.method public installModule()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 279
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_STARTUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    if-eq v4, v5, :cond_0

    .line 280
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    const-string v5, "currentState is %s"

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 282
    :cond_0
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->installModule()V

    .line 283
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 284
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 285
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mModuleMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    .line 286
    .local v3, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    if-eqz v3, :cond_1

    .line 288
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->installModule()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "err":Ljava/lang/Exception;
    const-string v4, "error at %s"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 297
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    :cond_2
    return-void
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 8
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 396
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->notifyBroadcastAction(Landroid/content/Intent;)V

    .line 397
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 398
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 399
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mModuleMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    .line 400
    .local v3, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    if-eqz v3, :cond_0

    .line 402
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->notifyBroadcastAction(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 403
    :catch_0
    move-exception v1

    .line 404
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

    .line 411
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    :cond_1
    return-void
.end method

.method public notifyConnect()V
    .locals 8

    .prologue
    .line 428
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->notifyConnect()V

    .line 429
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 430
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 431
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mModuleMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    .line 432
    .local v3, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    if-eqz v3, :cond_0

    .line 434
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->notifyConnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    :catch_0
    move-exception v1

    .line 436
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

    .line 443
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    :cond_1
    return-void
.end method

.method public notifyDisconnect()V
    .locals 8

    .prologue
    .line 460
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->notifyDisconnect()V

    .line 461
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 462
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 463
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mModuleMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    .line 464
    .local v3, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    if-eqz v3, :cond_0

    .line 466
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->notifyDisconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    .line 468
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

    .line 475
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    :cond_1
    return-void
.end method

.method public notifyFirstSessionCreated()V
    .locals 8

    .prologue
    .line 490
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->notifyFirstSessionCreated()V

    .line 491
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 492
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 493
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mModuleMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    .line 494
    .local v3, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    if-eqz v3, :cond_0

    .line 496
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->notifyFirstSessionCreated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    :catch_0
    move-exception v1

    .line 498
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

    .line 505
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    :cond_1
    return-void
.end method

.method public notifyLastSessionDeleted()V
    .locals 8

    .prologue
    .line 520
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->notifyLastSessionDeleted()V

    .line 521
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 522
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 523
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mModuleMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    .line 524
    .local v3, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    if-eqz v3, :cond_0

    .line 526
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->notifyLastSessionDeleted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    :catch_0
    move-exception v1

    .line 528
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

    .line 535
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    :cond_1
    return-void
.end method

.method public setupModule()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 315
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_STARTUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    if-eq v4, v5, :cond_0

    .line 316
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    const-string v5, "currentState is %s"

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 318
    :cond_0
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->setupModule()V

    .line 319
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 320
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 321
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mModuleMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    .line 322
    .local v3, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    if-eqz v3, :cond_1

    .line 324
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->setupModule()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :catch_0
    move-exception v1

    .line 326
    .local v1, "err":Ljava/lang/Exception;
    const-string v4, "error at %s"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 330
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    :cond_2
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_SETUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    .line 334
    return-void
.end method

.method public startupModule()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 241
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_CREATE:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    if-eq v4, v5, :cond_0

    .line 242
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    const-string v5, "currentState is %s"

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 244
    :cond_0
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->startupModule()V

    .line 245
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 246
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->sModules:[Ljava/lang/Class;

    aget-object v0, v4, v2

    .line 247
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mModuleMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    .line 248
    .local v3, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    if-eqz v3, :cond_1

    .line 250
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->startupModule()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "err":Ljava/lang/Exception;
    const-string v4, "error at %s"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 256
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    :cond_2
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;->AFTER_STARTUP:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv$MmbFwStateSv;

    .line 260
    return-void
.end method
