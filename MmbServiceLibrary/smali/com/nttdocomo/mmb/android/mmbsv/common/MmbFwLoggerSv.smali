.class public abstract Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;
.super Ljava/lang/Object;
.source "MmbFwLoggerSv.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final DEFAULT_LOGGER:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

.field protected static final INF_TAG:Ljava/lang/String; = "MMBI_INF"

.field protected static final LEVEL_ALL:I = 0x800f

.field protected static final LEVEL_API:I = 0x8

.field protected static final LEVEL_EXTERNAL:I = 0x8008

.field protected static final LEVEL_FUNCTION:I = 0x4

.field protected static final LEVEL_INTERNAL:I = 0x7

.field protected static final LEVEL_INVOKE:I = 0x8000

.field protected static final LEVEL_METHOD:I = 0x1

.field protected static final LEVEL_PUBLIC:I = 0x2

.field private static final SILENT_LOGGER:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

.field protected static final TAG:Ljava/lang/String; = "MMBI_SVC"

.field public static final TMM_DEBUG:Z

.field public static final TRACE_API:Z = true

.field protected static final TYPE_DEBUG:I = 0x70000

.field protected static final TYPE_DEBUG_BIT:I = 0x40000

.field protected static final TYPE_ERROR:I = 0x10000

.field protected static final TYPE_ERROR_BIT:I = 0x10000

.field protected static final TYPE_WARNING:I = 0x30000

.field protected static final TYPE_WARNING_BIT:I = 0x20000

.field private static sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

.field private static sTraceDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const/4 v0, -0x1

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sTraceDepth:I

    .line 153
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIt2LoggerSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIt2LoggerSv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->DEFAULT_LOGGER:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    .line 158
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwReleaseLoggerSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwReleaseLoggerSv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->SILENT_LOGGER:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    .line 163
    const-string v0, "exist"

    const-string v1, "ro.mmb.tmmdebuglog"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->TMM_DEBUG:Z

    .line 171
    sget-boolean v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->TMM_DEBUG:Z

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->DEFAULT_LOGGER:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->SILENT_LOGGER:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStackTrace()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 570
    .local v0, "array":[Ljava/lang/StackTraceElement;
    sget v3, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sTraceDepth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 571
    const/4 v3, 0x4

    sput v3, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sTraceDepth:I

    .line 572
    const/4 v1, 0x0

    .local v1, "depth":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 573
    aget-object v2, v0, v1

    .line 574
    .local v2, "element":Ljava/lang/StackTraceElement;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->isMe(Ljava/lang/StackTraceElement;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getStackTrace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 575
    add-int/lit8 v3, v1, 0x2

    sput v3, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sTraceDepth:I

    .line 580
    .end local v1    # "depth":I
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget v4, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sTraceDepth:I

    array-length v5, v0

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 572
    .restart local v1    # "depth":I
    .restart local v2    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected static isMe(Ljava/lang/StackTraceElement;)Z
    .locals 2
    .param p0, "aTrace"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 597
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs logDebug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "aFormat"    # Ljava/lang/String;
    .param p1, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 273
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    invoke-virtual {v0, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public static varargs logEnterApi([Ljava/lang/Object;)V
    .locals 2
    .param p0, "aArgs"    # [Ljava/lang/Object;

    .prologue
    .line 292
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->enter(I[Ljava/lang/Object;)V

    .line 293
    return-void
.end method

.method public static varargs logEnterFunction([Ljava/lang/Object;)V
    .locals 2
    .param p0, "aArgs"    # [Ljava/lang/Object;

    .prologue
    .line 383
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->enter(I[Ljava/lang/Object;)V

    .line 384
    return-void
.end method

.method public static varargs logEnterMethod([Ljava/lang/Object;)V
    .locals 2
    .param p0, "aArgs"    # [Ljava/lang/Object;

    .prologue
    .line 490
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->enter(I[Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method public static varargs logEnterPublic([Ljava/lang/Object;)V
    .locals 2
    .param p0, "aArgs"    # [Ljava/lang/Object;

    .prologue
    .line 436
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->enter(I[Ljava/lang/Object;)V

    .line 437
    return-void
.end method

.method public static varargs logError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "aFormat"    # Ljava/lang/String;
    .param p1, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 232
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    invoke-virtual {v0, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method public static logError(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 212
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    invoke-virtual {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->error(Ljava/lang/Throwable;)V

    .line 213
    return-void
.end method

.method public static varargs logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "aFormat"    # Ljava/lang/String;
    .param p1, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 543
    return-void
.end method

.method public static logInfo(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "aErr"    # Ljava/lang/Throwable;

    .prologue
    .line 554
    return-void
.end method

.method public static varargs logInvokeApi([Ljava/lang/Object;)V
    .locals 2
    .param p0, "aArgs"    # [Ljava/lang/Object;

    .prologue
    .line 347
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    const v1, 0x8000

    invoke-virtual {v0, v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->enter(I[Ljava/lang/Object;)V

    .line 348
    return-void
.end method

.method public static logLeaveApi()V
    .locals 2

    .prologue
    .line 329
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->leave(I)V

    .line 330
    return-void
.end method

.method public static logLeaveApi(Ljava/lang/Object;)V
    .locals 4
    .param p0, "aResult"    # Ljava/lang/Object;

    .prologue
    .line 311
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    const/16 v1, 0x8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->leave(I[Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method public static logLeaveFunction()V
    .locals 2

    .prologue
    .line 418
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->leave(I)V

    .line 419
    return-void
.end method

.method public static logLeaveFunction(Ljava/lang/Object;)V
    .locals 4
    .param p0, "aResult"    # Ljava/lang/Object;

    .prologue
    .line 401
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    const/4 v1, 0x4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->leave(I[Ljava/lang/Object;)V

    .line 402
    return-void
.end method

.method public static logLeaveMethod()V
    .locals 2

    .prologue
    .line 527
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->leave(I)V

    .line 528
    return-void
.end method

.method public static logLeaveMethod(Ljava/lang/Object;)V
    .locals 4
    .param p0, "aResult"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 509
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->leave(I[Ljava/lang/Object;)V

    .line 510
    return-void
.end method

.method public static logLeavePublic()V
    .locals 2

    .prologue
    .line 471
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->leave(I)V

    .line 472
    return-void
.end method

.method public static logLeavePublic(Ljava/lang/Object;)V
    .locals 4
    .param p0, "aResult"    # Ljava/lang/Object;

    .prologue
    .line 454
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    const/4 v1, 0x2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->leave(I[Ljava/lang/Object;)V

    .line 455
    return-void
.end method

.method public static varargs logReturnApi([Ljava/lang/Object;)V
    .locals 2
    .param p0, "aResult"    # [Ljava/lang/Object;

    .prologue
    .line 365
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    const v1, 0x8000

    invoke-virtual {v0, v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->leave(I[Ljava/lang/Object;)V

    .line 366
    return-void
.end method

.method public static varargs logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "aFormat"    # Ljava/lang/String;
    .param p1, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 253
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    invoke-virtual {v0, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public static setLogger(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;)V
    .locals 1
    .param p0, "aLogger"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    .prologue
    .line 190
    if-nez p0, :cond_0

    .line 191
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->SILENT_LOGGER:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    sput-object p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->sLogger:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    goto :goto_0
.end method


# virtual methods
.method public varargs abstract debug(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract enter(I[Ljava/lang/Object;)V
.end method

.method public varargs abstract error(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract error(Ljava/lang/Throwable;)V
.end method

.method protected formatArgument(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "aArg"    # Ljava/lang/Object;

    .prologue
    .line 804
    if-nez p1, :cond_0

    .line 805
    const-string v0, "null"

    .line 815
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 806
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 808
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_2

    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 810
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 811
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->formatArray(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 813
    .end local v0    # "result":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method protected varargs formatArguments([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1, "aArgs"    # [Ljava/lang/Object;

    .prologue
    .line 775
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 776
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    const-string v5, ""

    .line 778
    .local v5, "sep":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 779
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 780
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->formatArgument(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const-string v5, ","

    .line 779
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 785
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method protected formatArray(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "aArg"    # Ljava/lang/Object;

    .prologue
    .line 833
    instance-of v1, p1, [B

    if-eqz v1, :cond_0

    .line 834
    check-cast p1, [B

    .end local p1    # "aArg":Ljava/lang/Object;
    check-cast p1, [B

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 835
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aArg":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, [Z

    if-eqz v1, :cond_1

    .line 836
    check-cast p1, [Z

    .end local p1    # "aArg":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-static {p1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 837
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aArg":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, [C

    if-eqz v1, :cond_2

    .line 838
    check-cast p1, [C

    .end local p1    # "aArg":Ljava/lang/Object;
    check-cast p1, [C

    invoke-static {p1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 839
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aArg":Ljava/lang/Object;
    :cond_2
    instance-of v1, p1, [S

    if-eqz v1, :cond_3

    .line 840
    check-cast p1, [S

    .end local p1    # "aArg":Ljava/lang/Object;
    check-cast p1, [S

    invoke-static {p1}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 841
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aArg":Ljava/lang/Object;
    :cond_3
    instance-of v1, p1, [I

    if-eqz v1, :cond_4

    .line 842
    check-cast p1, [I

    .end local p1    # "aArg":Ljava/lang/Object;
    check-cast p1, [I

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 843
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aArg":Ljava/lang/Object;
    :cond_4
    instance-of v1, p1, [J

    if-eqz v1, :cond_5

    .line 844
    check-cast p1, [J

    .end local p1    # "aArg":Ljava/lang/Object;
    check-cast p1, [J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 845
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aArg":Ljava/lang/Object;
    :cond_5
    instance-of v1, p1, [F

    if-eqz v1, :cond_6

    .line 846
    check-cast p1, [F

    .end local p1    # "aArg":Ljava/lang/Object;
    check-cast p1, [F

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 847
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aArg":Ljava/lang/Object;
    :cond_6
    instance-of v1, p1, [D

    if-eqz v1, :cond_7

    .line 848
    check-cast p1, [D

    .end local p1    # "aArg":Ljava/lang/Object;
    check-cast p1, [D

    invoke-static {p1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 850
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aArg":Ljava/lang/Object;
    :cond_7
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "aArg":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getSimpleClassName(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2
    .param p1, "aTrace"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 758
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs abstract info(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract info(Ljava/lang/Throwable;)V
.end method

.method public abstract leave(I)V
.end method

.method public varargs abstract leave(I[Ljava/lang/Object;)V
.end method

.method public varargs abstract warning(Ljava/lang/String;[Ljava/lang/Object;)V
.end method
