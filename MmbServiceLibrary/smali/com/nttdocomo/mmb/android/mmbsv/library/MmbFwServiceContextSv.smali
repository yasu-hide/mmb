.class public final Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
.super Ljava/lang/Object;
.source "MmbFwServiceContextSv.java"


# static fields
.field public static final CAN_USE_AUDIO:I = 0x0

.field public static final CHENGE_STATE_CONNECT:I = 0x1

.field public static final CHENGE_STATE_DISCONNECT:I = 0x2

.field private static final FACADES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final LOGGER_FILE:Ljava/lang/String; = "/data/local/tmp/conf.txt"

.field public static final NOT_CHENGE_STATE:I = 0x0

.field static final ROOT_PACKAGE:Ljava/lang/String; = "com.nttdocomo.mmb.android.mmbsv"

.field public static final SCMST_NOTSUPPORT:I = 0x200

.field static final SERVICE_CLASS:Ljava/lang/String; = "com.nttdocomo.mmb.android.mmbsv.process.MmbFwMainServiceSv"

.field static final SERVICE_PACKAGE:Ljava/lang/String; = "com.nttdocomo.mmb.android.mmbsv.process"

.field public static final USBAUDIO_CONNECT:I = 0x100

.field private static sAntennaCapability:I

.field private static sFcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

.field private static sFcPlayerCount:I

.field private static sIndivManager:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;

.field private static sInternalContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

.field private static sRecodingAvailability:Z

.field private static sStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

.field private static sStPlayerCount:I

.field private static sTheConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

.field private static sTheContext:Landroid/content/Context;


# instance fields
.field private isCreated:Z

.field private isResumed:Z

.field private isStarted:Z

.field private final mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

.field private final mContext:Landroid/content/Context;

.field private mCopyControl:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;

.field private final mFacadeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mNotifyListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionId:I

.field private usbState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 99
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmManagerSv;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConflictManagerSv;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->FACADES:[Ljava/lang/Class;

    .line 131
    sput-object v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sIndivManager:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;

    .line 684
    sput-object v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .line 689
    sput v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayerCount:I

    .line 816
    sput-object v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    .line 821
    sput v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayerCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mNotifyListenerSet:Ljava/util/Set;

    .line 312
    iput v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mSessionId:I

    .line 342
    iput-boolean v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isCreated:Z

    .line 347
    iput-boolean v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isStarted:Z

    .line 352
    iput-boolean v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isResumed:Z

    .line 1802
    const/4 v7, -0x1

    iput v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->usbState:I

    .line 370
    if-nez p1, :cond_0

    .line 371
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "aContext is null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 373
    :cond_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mContext:Landroid/content/Context;

    .line 374
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mHandler:Landroid/os/Handler;

    .line 375
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mFacadeMap:Ljava/util/Map;

    .line 376
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;

    move-result-object v6

    .line 377
    .local v6, "poInfo":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->hasRecordingFunction()Z

    move-result v7

    sput-boolean v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sRecodingAvailability:Z

    .line 378
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->getAntennaCapability()I

    move-result v7

    sput v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sAntennaCapability:I

    .line 379
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->FACADES:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 381
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-boolean v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sRecodingAvailability:Z

    if-nez v7, :cond_1

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;

    if-ne v2, v7, :cond_1

    .line 379
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 384
    :cond_1
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 385
    .local v1, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->addFacade(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_1

    .line 386
    .end local v1    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v3

    .line 387
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 388
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 389
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 390
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 391
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 392
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v3

    .line 393
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 394
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    .line 395
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 397
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v3

    .line 398
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 401
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mPlayers:Ljava/util/List;

    .line 402
    invoke-static {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getConnectionInstance(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    move-result-object v7

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    .line 403
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->createCopyControlPorting(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;

    move-result-object v7

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mCopyControl:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;

    .line 406
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getPreference()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getSecureClock()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 414
    :goto_2
    return-void

    .line 407
    :catch_6
    move-exception v3

    .line 409
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v7, "%s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v10

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mPlayers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mNotifyListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method private addFacade(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V
    .locals 2
    .param p1, "aFacade"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mFacadeMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    return-void
.end method

.method private addPlayer(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V
    .locals 1
    .param p1, "aPlayer"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    .prologue
    .line 543
    if-eqz p1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mPlayers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_0
    return-void
.end method

.method public static assignResource(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;)Ljava/lang/Integer;
    .locals 3
    .param p0, "aResourceUser"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2138
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2139
    .local v1, "result":Ljava/lang/Integer;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 2140
    .local v0, "processId":I
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sInternalContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getConnectionInstance(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v2

    invoke-interface {v2, v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->assignResource(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2145
    return-object v1
.end method

.method public static backupFiles()V
    .locals 2

    .prologue
    .line 2188
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sInternalContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getConnectionInstance(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v1

    invoke-interface {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->backupFiles()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2195
    .local v0, "err":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2189
    .end local v0    # "err":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 2190
    .restart local v0    # "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static declared-synchronized clearFcPlayerInstance()V
    .locals 2

    .prologue
    .line 884
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    .line 885
    const/4 v0, 0x0

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayerCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    monitor-exit v1

    return-void

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized clearStPlayerInstance()V
    .locals 2

    .prologue
    .line 752
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .line 753
    const/4 v0, 0x0

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayerCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    monitor-exit v1

    return-void

    .line 752
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized closeService()V
    .locals 2

    .prologue
    .line 207
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 210
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->unloadStPlayerInstance()V

    .line 211
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->unloadFcPlayerInstance()V

    .line 212
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->ensureDisconnection()Z

    .line 213
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    .line 214
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheContext:Landroid/content/Context;

    .line 215
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sInternalContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 216
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sIndivManager:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    monitor-exit v1

    return-void
.end method

.method public static createContext(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 239
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    if-nez v1, :cond_0

    .line 240
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 242
    :cond_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 245
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    return-object v0
.end method

.method private createCopyControlPorting(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 429
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 433
    .local v0, "copycontrol":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;
    return-object v0

    .line 434
    .end local v0    # "copycontrol":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;
    :catch_0
    move-exception v1

    .line 435
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static declared-synchronized getConnectionInstance(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;
    .locals 3
    .param p0, "aServiceContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 295
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;
    monitor-exit v1

    return-object v0

    .line 295
    .end local v0    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private getFacade(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mFacadeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    .line 526
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    return-object v0
.end method

.method private static declared-synchronized getFcPlayerInstance(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;
    .locals 3
    .param p0, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 836
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayerCount:I

    if-nez v0, :cond_1

    .line 837
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    if-nez v0, :cond_0

    .line 838
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    .line 839
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->notifyOnLoad()V

    .line 841
    :cond_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->syncState(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V

    .line 843
    :cond_1
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayerCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayerCount:I

    .line 847
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 836
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getIndividualManager()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;
    .locals 3

    .prologue
    .line 1191
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sIndivManager:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;

    .line 1192
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;
    if-nez v0, :cond_0

    .line 1193
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;

    .end local v0    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)V

    .line 1194
    .restart local v0    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;
    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sIndivManager:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    :cond_0
    monitor-exit v2

    return-object v0

    .line 1191
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getInternalContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .locals 2

    .prologue
    .line 266
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sInternalContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    if-nez v1, :cond_0

    .line 267
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->createContext(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sInternalContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 269
    :cond_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sInternalContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 273
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    return-object v0
.end method

.method private getLoggerClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "aFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1314
    const/4 v5, 0x0

    .line 1315
    .local v5, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1318
    .local v3, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1319
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1320
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    .end local v3    # "input":Ljava/io/InputStream;
    .local v4, "input":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v0, v7, [B

    .line 1323
    .local v0, "buf":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 1324
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    move-object v5, v6

    .line 1329
    .end local v0    # "buf":[B
    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    .line 1331
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1338
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v5

    .line 1332
    .restart local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1333
    .local v1, "err":Ljava/lang/Exception;
    const-string v7, "close error"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1326
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 1327
    .restart local v1    # "err":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1329
    if-eqz v3, :cond_1

    .line 1331
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1332
    :catch_2
    move-exception v1

    .line 1333
    const-string v7, "close error"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1329
    .end local v1    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v3, :cond_2

    .line 1331
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1334
    :cond_2
    :goto_3
    throw v7

    .line 1332
    :catch_3
    move-exception v1

    .line 1333
    .restart local v1    # "err":Ljava/lang/Exception;
    const-string v8, "close error"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1329
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "input":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_2

    .line 1326
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static getResourceUser(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    .locals 2
    .param p0, "aResourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2113
    const/4 v0, 0x0

    .line 2115
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sInternalContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getConnectionInstance(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getResourceUser(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    move-result-object v0

    .line 2120
    return-object v0
.end method

.method private static declared-synchronized getStPlayerInstance(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;
    .locals 3
    .param p0, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 704
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayerCount:I

    if-nez v0, :cond_1

    .line 705
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    if-nez v0, :cond_0

    .line 706
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .line 707
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->notifyOnLoad()V

    .line 709
    :cond_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->syncState(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V

    .line 711
    :cond_1
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayerCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayerCount:I

    .line 715
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getTmmStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 2210
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2214
    .local v0, "result":Ljava/io/File;
    return-object v0
.end method

.method public static getTmmStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2229
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 2233
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method private initLogger()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1285
    :try_start_0
    const-string v4, "/data/local/tmp/conf.txt"

    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getLoggerClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1286
    .local v3, "loggername":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1287
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1288
    .local v2, "loggerclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    .line 1289
    .local v1, "logger":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->setLogger(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1298
    .end local v1    # "logger":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;
    .end local v2    # "loggerclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "loggername":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1291
    :catch_0
    move-exception v0

    .line 1292
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1293
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 1294
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1295
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 1296
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static declared-synchronized openService(Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;)V
    .locals 4
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;

    .prologue
    .line 175
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoDeviceManagementSp/MmbPoDeviceManagementSp;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoDeviceManagementSp/MmbPoDeviceManagementSp;-><init>()V

    .line 176
    .local v0, "mdm":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoDeviceManagementSp/MmbPoDeviceManagementSp;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoDeviceManagementSp/MmbPoDeviceManagementSp;->getMDMState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    const-string v3, "Application is in status not to be able to start by MDM."

    invoke-direct {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v0    # "mdm":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoDeviceManagementSp/MmbPoDeviceManagementSp;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 180
    .restart local v0    # "mdm":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoDeviceManagementSp/MmbPoDeviceManagementSp;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    if-eqz v1, :cond_1

    .line 181
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 183
    :cond_1
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->clearStPlayerInstance()V

    .line 184
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->clearFcPlayerInstance()V

    .line 185
    sput-object p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheContext:Landroid/content/Context;

    .line 186
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-direct {v1, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;-><init>(Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;)V

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    .line 187
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->ensureConnection()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    monitor-exit v2

    return-void
.end method

.method public static declared-synchronized prepareService(Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;)V
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-direct {v0, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;-><init>(Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    .line 151
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->ensureConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    monitor-exit v1

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized releaseFcPlayerInstance(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 2
    .param p0, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 864
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayerCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayerCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    monitor-exit v1

    return-void

    .line 864
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static releaseResource(ILjava/lang/String;)V
    .locals 2
    .param p0, "aResourceId"    # I
    .param p1, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2166
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 2167
    .local v0, "processId":I
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sInternalContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getConnectionInstance(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v1

    invoke-interface {v1, v0, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->releaseResource(IILjava/lang/String;)V

    .line 2172
    return-void
.end method

.method private static declared-synchronized releaseStPlayerInstance(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 2
    .param p0, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 732
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayerCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayerCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    monitor-exit v1

    return-void

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeFacade(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V
    .locals 2
    .param p1, "aFacade"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mFacadeMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    return-void
.end method

.method private removePlayer(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V
    .locals 1
    .param p1, "aPlayer"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    .prologue
    .line 565
    if-eqz p1, :cond_0

    .line 566
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mPlayers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 571
    :cond_0
    return-void
.end method

.method private syncState(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V
    .locals 1
    .param p1, "aFacade"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isCreated:Z

    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {p1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->notifyOnCreate(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 932
    :cond_0
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isStarted:Z

    if-eqz v0, :cond_1

    .line 933
    invoke-virtual {p1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->notifyOnStart(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 935
    :cond_1
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isResumed:Z

    if-eqz v0, :cond_2

    .line 936
    invoke-virtual {p1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->notifyOnResume(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 941
    :cond_2
    return-void
.end method

.method private static declared-synchronized unloadFcPlayerInstance()V
    .locals 2

    .prologue
    .line 905
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    if-eqz v0, :cond_0

    .line 906
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->notifyOnUnload()V

    .line 907
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    .line 908
    const/4 v0, 0x0

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sFcPlayerCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    :cond_0
    monitor-exit v1

    return-void

    .line 905
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized unloadStPlayerInstance()V
    .locals 2

    .prologue
    .line 773
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    if-eqz v0, :cond_0

    .line 774
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->notifyOnUnload()V

    .line 775
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .line 776
    const/4 v0, 0x0

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sStPlayerCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    :cond_0
    monitor-exit v1

    return-void

    .line 773
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addNotifyListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;)V
    .locals 1
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mNotifyListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1679
    return-void
.end method

.method public getAntennaCapability()I
    .locals 1

    .prologue
    .line 1143
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sAntennaCapability:I

    return v0
.end method

.method public getAudioDeviceState()I
    .locals 3

    .prologue
    .line 1967
    const/4 v0, 0x0

    .line 1968
    .local v0, "result":I
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoUsbSp/MmbPoUsbSp;->createObject()Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoUsbSp/MmbPoUsbSp;

    move-result-object v1

    .line 1970
    .local v1, "usbMgr":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoUsbSp/MmbPoUsbSp;
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sTheContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoUsbSp/MmbPoUsbSp;->isUsbAudioConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1974
    or-int/lit16 v0, v0, 0x100

    .line 1976
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isA2dpConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isA2dpScmstSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1980
    or-int/lit16 v0, v0, 0x200

    .line 1986
    :cond_1
    return v0
.end method

.method public getCasDrmManager()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmManagerSv;
    .locals 3

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getSessionId()I

    .line 960
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmManagerSv;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getFacade(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    move-result-object v0

    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    move-object v1, v0

    .line 961
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmManagerSv;

    .line 965
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmManagerSv;
    return-object v1
.end method

.method public getConflictManager()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConflictManagerSv;
    .locals 3

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getSessionId()I

    .line 1058
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConflictManagerSv;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getFacade(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    move-result-object v0

    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    move-object v1, v0

    .line 1059
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConflictManagerSv;

    .line 1063
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConflictManagerSv;
    return-object v1
.end method

.method getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;
    .locals 2

    .prologue
    .line 589
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v0

    .line 593
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;
    return-object v0
.end method

.method public getContentOperator()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;
    .locals 3

    .prologue
    .line 984
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getSessionId()I

    .line 985
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getFacade(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    move-result-object v0

    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    move-object v1, v0

    .line 986
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;

    .line 990
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;
    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mContext:Landroid/content/Context;

    .line 459
    .local v0, "result":Landroid/content/Context;
    return-object v0
.end method

.method public getFcPlayer()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;
    .locals 3

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getSessionId()I

    .line 800
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getFacade(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    move-result-object v0

    .line 801
    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    if-nez v0, :cond_0

    .line 802
    invoke-static {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getFcPlayerInstance(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    move-result-object v0

    .line 803
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->addFacade(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V

    .line 804
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->addPlayer(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V

    :cond_0
    move-object v1, v0

    .line 806
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;

    .line 810
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;
    return-object v1
.end method

.method public getInternalFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .locals 5

    .prologue
    .line 1163
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->getStackTrace()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackTraceElement;

    .line 1164
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.nttdocomo.mmb.android.mmbsv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1165
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceSecurityException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceSecurityException;-><init>()V

    throw v3

    .line 1167
    :cond_0
    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getFacade(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    move-result-object v1

    .local v1, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    move-object v2, v1

    .line 1168
    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    .line 1172
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    return-object v2
.end method

.method public getMetadataManager()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;
    .locals 3

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getSessionId()I

    .line 1035
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getFacade(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    move-result-object v0

    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    move-object v1, v0

    .line 1036
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;

    .line 1040
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;
    return-object v1
.end method

.method public getPreference()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    .locals 3

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getSessionId()I

    .line 1010
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getFacade(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    move-result-object v0

    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    move-object v1, v0

    .line 1011
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    .line 1015
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    return-object v1
.end method

.method public getRecordingManager()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;
    .locals 4

    .prologue
    .line 1083
    sget-boolean v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sRecodingAvailability:Z

    if-nez v2, :cond_0

    .line 1084
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    const-string v3, "Recoding Module Unsupported"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1086
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getSessionId()I

    .line 1087
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getFacade(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    move-result-object v0

    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    move-object v1, v0

    .line 1088
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;

    .line 1092
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;
    return-object v1
.end method

.method getResponse()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;
    .locals 2

    .prologue
    .line 612
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->getResponse()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;

    move-result-object v0

    .line 616
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;
    return-object v0
.end method

.method getSessionId()I
    .locals 4

    .prologue
    .line 635
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mSessionId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 636
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v2

    .line 637
    :cond_0
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mSessionId:I

    if-nez v2, :cond_1

    .line 638
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 639
    .local v0, "pid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createSession(I)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mSessionId:I

    .line 640
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mSessionId:I

    if-nez v2, :cond_1

    .line 641
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v2

    .line 644
    .end local v0    # "pid":I
    :cond_1
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mSessionId:I

    .line 648
    .local v1, "result":I
    return v1
.end method

.method public getStPlayer()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;
    .locals 3

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getSessionId()I

    .line 668
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getFacade(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    move-result-object v0

    .line 669
    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    if-nez v0, :cond_0

    .line 670
    invoke-static {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getStPlayerInstance(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    move-result-object v0

    .line 671
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->addFacade(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V

    .line 672
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->addPlayer(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V

    :cond_0
    move-object v1, v0

    .line 674
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    .line 678
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;
    return-object v1
.end method

.method public getUsbConnectState(Landroid/content/Intent;)I
    .locals 4
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 1830
    const/4 v0, 0x0

    .line 1831
    .local v0, "result":I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1832
    const-string v2, "plugged"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1833
    .local v1, "state":I
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->usbState:I

    if-eq v2, v1, :cond_0

    .line 1834
    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    .line 1835
    const/4 v0, 0x1

    .line 1839
    :goto_0
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->usbState:I

    .line 1845
    .end local v1    # "state":I
    :cond_0
    return v0

    .line 1837
    .restart local v1    # "state":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public hasRecordingFunction()Z
    .locals 1

    .prologue
    .line 1115
    sget-boolean v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->sRecodingAvailability:Z

    return v0
.end method

.method public initializeUsbConnectState()V
    .locals 1

    .prologue
    .line 1860
    const/4 v0, -0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->usbState:I

    .line 1864
    return-void
.end method

.method public isA2dpConnected()Z
    .locals 3

    .prologue
    .line 1786
    const/4 v1, 0x0

    .line 1788
    .local v1, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->isA2dpConnected()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1795
    :goto_0
    return v1

    .line 1789
    :catch_0
    move-exception v0

    .line 1790
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isA2dpOn()Z
    .locals 3

    .prologue
    .line 2009
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2010
    .local v0, "manager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    return v1
.end method

.method public isA2dpScmstSupported()Z
    .locals 3

    .prologue
    .line 2037
    const/4 v1, 0x0

    .line 2039
    .local v1, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->isA2dpScmstSupported()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2046
    :goto_0
    return v1

    .line 2040
    :catch_0
    move-exception v0

    .line 2041
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isConnectedIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 1880
    const/4 v0, 0x0

    .line 1881
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1882
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1883
    .local v1, "state":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1884
    const/4 v0, 0x1

    .line 1891
    .end local v1    # "state":I
    :cond_0
    return v0
.end method

.method public isDisconnectedIntent(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 1907
    const/4 v1, 0x0

    .line 1908
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1909
    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1910
    .local v2, "state":I
    if-nez v2, :cond_0

    .line 1911
    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1912
    .local v0, "prev":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 1913
    const/4 v1, 0x1

    .line 1921
    .end local v0    # "prev":I
    .end local v2    # "state":I
    :cond_0
    return v1
.end method

.method notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 2
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv$1;

    invoke-direct {v1, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1661
    return-void
.end method

.method public notifyCopyControlInformationForFc([B)V
    .locals 1
    .param p1, "aCopyInformation"    # [B

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mCopyControl:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;->notifyCopyControlInformationForFc([B)V

    .line 2094
    return-void
.end method

.method public notifyCopyControlInformationForSt(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;)V
    .locals 1
    .param p1, "aCopyInformation"    # Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mCopyControl:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;->notifyCopyControlInformationForSt(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;)V

    .line 2070
    return-void
.end method

.method public notifyFatalError()V
    .locals 1

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->notifyFatalError()V

    .line 1745
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 1237
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->initLogger()V

    .line 1241
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isCreated:Z

    if-eqz v4, :cond_0

    .line 1242
    const-string v4, "invoke multiple"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1268
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v4, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->addContext(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1249
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->ensureConnection()Z

    .line 1250
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mPlayers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    .line 1252
    .local v3, "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :try_start_0
    invoke-virtual {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->notifyOnCreate(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1253
    :catch_0
    move-exception v0

    .line 1254
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1257
    .end local v0    # "err":Ljava/lang/Exception;
    .end local v3    # "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mNotifyListenerSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;

    .line 1259
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    :try_start_1
    invoke-interface {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;->notifyOnCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1260
    :catch_1
    move-exception v0

    .line 1261
    .restart local v0    # "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1264
    .end local v0    # "err":Ljava/lang/Exception;
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isCreated:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1576
    iget-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isCreated:Z

    if-nez v5, :cond_0

    .line 1577
    const-string v5, "invoke multiple"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1622
    :goto_0
    return-void

    .line 1583
    :cond_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mPlayers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    .line 1585
    .local v4, "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :try_start_0
    invoke-virtual {v4, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->notifyOnDestroy(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1586
    :catch_0
    move-exception v0

    .line 1587
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1590
    .end local v0    # "err":Ljava/lang/Exception;
    .end local v4    # "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :cond_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mNotifyListenerSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;

    .line 1592
    .local v3, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    :try_start_1
    invoke-interface {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;->notifyOnDestroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1593
    :catch_1
    move-exception v0

    .line 1594
    .restart local v0    # "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1597
    .end local v0    # "err":Ljava/lang/Exception;
    .end local v3    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    :cond_2
    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mSessionId:I

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mSessionId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 1599
    :try_start_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v5

    iget v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mSessionId:I

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->deleteSession(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1604
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v5, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->removeContext(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1606
    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getFacade(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    move-result-object v1

    .line 1607
    .local v1, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    if-eqz v1, :cond_4

    .line 1608
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->removeFacade(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V

    .line 1609
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->removePlayer(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V

    .line 1610
    invoke-static {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->releaseStPlayerInstance(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1612
    :cond_4
    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getFacade(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    move-result-object v1

    .line 1613
    if-eqz v1, :cond_5

    .line 1614
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->removeFacade(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V

    .line 1615
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->removePlayer(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;)V

    .line 1616
    invoke-static {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->releaseFcPlayerInstance(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1618
    :cond_5
    iput-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isCreated:Z

    goto :goto_0

    .line 1600
    .end local v1    # "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :catch_2
    move-exception v0

    .line 1601
    .restart local v0    # "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method onErrorOccured()V
    .locals 1

    .prologue
    .line 1758
    const/4 v0, -0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mSessionId:I

    .line 1759
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1443
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isResumed:Z

    if-nez v4, :cond_0

    .line 1444
    const-string v4, "invoke multiple"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1468
    :goto_0
    return-void

    .line 1450
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mPlayers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    .line 1452
    .local v3, "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :try_start_0
    invoke-virtual {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->notifyOnPause(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1453
    :catch_0
    move-exception v0

    .line 1454
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1457
    .end local v0    # "err":Ljava/lang/Exception;
    .end local v3    # "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mNotifyListenerSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;

    .line 1459
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    :try_start_1
    invoke-interface {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;->notifyOnPause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1460
    :catch_1
    move-exception v0

    .line 1461
    .restart local v0    # "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1464
    .end local v0    # "err":Ljava/lang/Exception;
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    :cond_2
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isResumed:Z

    goto :goto_0
.end method

.method public onRestart()V
    .locals 5

    .prologue
    .line 1538
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mPlayers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    .line 1540
    .local v3, "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :try_start_0
    invoke-virtual {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->notifyOnRestart(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1545
    .end local v0    # "err":Ljava/lang/Exception;
    .end local v3    # "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mNotifyListenerSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;

    .line 1547
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    :try_start_1
    invoke-interface {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;->notifyOnRestart()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1548
    :catch_1
    move-exception v0

    .line 1549
    .restart local v0    # "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1558
    .end local v0    # "err":Ljava/lang/Exception;
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 1400
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isResumed:Z

    if-eqz v4, :cond_0

    .line 1401
    const-string v4, "invoke multiple"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1425
    :goto_0
    return-void

    .line 1407
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mPlayers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    .line 1409
    .local v3, "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :try_start_0
    invoke-virtual {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->notifyOnResume(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1410
    :catch_0
    move-exception v0

    .line 1411
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1414
    .end local v0    # "err":Ljava/lang/Exception;
    .end local v3    # "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mNotifyListenerSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;

    .line 1416
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    :try_start_1
    invoke-interface {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;->notifyOnResume()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1417
    :catch_1
    move-exception v0

    .line 1418
    .restart local v0    # "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1421
    .end local v0    # "err":Ljava/lang/Exception;
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isResumed:Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 1357
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isStarted:Z

    if-eqz v4, :cond_0

    .line 1358
    const-string v4, "invoke multiple"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1382
    :goto_0
    return-void

    .line 1364
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mPlayers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    .line 1366
    .local v3, "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :try_start_0
    invoke-virtual {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->notifyOnStart(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1367
    :catch_0
    move-exception v0

    .line 1368
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1371
    .end local v0    # "err":Ljava/lang/Exception;
    .end local v3    # "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mNotifyListenerSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;

    .line 1373
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    :try_start_1
    invoke-interface {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;->notifyOnStart()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1374
    :catch_1
    move-exception v0

    .line 1375
    .restart local v0    # "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1378
    .end local v0    # "err":Ljava/lang/Exception;
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isStarted:Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1486
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isStarted:Z

    if-nez v4, :cond_0

    .line 1487
    const-string v4, "invoke multiple"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1511
    :goto_0
    return-void

    .line 1493
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mPlayers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    .line 1495
    .local v3, "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :try_start_0
    invoke-virtual {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->notifyOnStop(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1496
    :catch_0
    move-exception v0

    .line 1497
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1500
    .end local v0    # "err":Ljava/lang/Exception;
    .end local v3    # "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mNotifyListenerSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;

    .line 1502
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    :try_start_1
    invoke-interface {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;->notifyOnStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1503
    :catch_1
    move-exception v0

    .line 1504
    .restart local v0    # "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1507
    .end local v0    # "err":Ljava/lang/Exception;
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    :cond_2
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isStarted:Z

    goto :goto_0
.end method

.method public removeNotifyListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;)V
    .locals 1
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mNotifyListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1695
    return-void
.end method

.method public restartService()V
    .locals 2

    .prologue
    .line 1715
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->onDestroy()V

    .line 1716
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->restartService(Z)V

    .line 1717
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->ensureDisconnection()Z

    .line 1721
    return-void
.end method

.method public setApplicationMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "aKey"    # Ljava/lang/String;

    .prologue
    .line 1218
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->setApplicationMode(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 1222
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbFwServiceContextSv [mNotifyListenerSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mNotifyListenerSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFacadeMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mFacadeMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPlayers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mPlayers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
