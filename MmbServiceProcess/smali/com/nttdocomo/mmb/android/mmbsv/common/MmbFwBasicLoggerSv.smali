.class public Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;
.source "MmbFwBasicLoggerSv.java"


# instance fields
.field private final mLevels:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "aLevels"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;-><init>()V

    .line 57
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->mLevels:I

    .line 58
    return-void
.end method

.method private varargs formatInvoke(Ljava/lang/StackTraceElement;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "aTrace"    # Ljava/lang/StackTraceElement;
    .param p2, "aArgs"    # [Ljava/lang/Object;

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->getPrefix(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->formatArguments([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs formatMessage(Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "aTrace"    # Ljava/lang/StackTraceElement;
    .param p2, "aFormat"    # Ljava/lang/String;
    .param p3, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->getPrefix(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "result":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 290
    :cond_0
    if-eqz p3, :cond_1

    array-length v1, p3

    if-nez v1, :cond_2

    .line 291
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs formatReturn(Ljava/lang/StackTraceElement;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "aTrace"    # Ljava/lang/StackTraceElement;
    .param p2, "aResult"    # [Ljava/lang/Object;

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->getPrefix(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "() -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->formatArguments([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrefix(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2
    .param p1, "aTrace"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->getSimpleClassName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "aFormat"    # Ljava/lang/String;
    .param p2, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 143
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->mLevels:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 144
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->getStackTrace()Ljava/util/List;

    move-result-object v0

    .line 145
    .local v0, "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    const-string v2, "MMBI_SVC"

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StackTraceElement;

    invoke-direct {p0, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->formatMessage(Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v0    # "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    :cond_0
    return-void
.end method

.method public varargs enter(I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "aLevel"    # I
    .param p2, "aArgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 166
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->mLevels:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 167
    const v1, 0x8008

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 168
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->getStackTrace()Ljava/util/List;

    move-result-object v0

    .line 169
    .local v0, "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    const-string v2, "MMBI_SVC"

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StackTraceElement;

    invoke-direct {p0, v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->formatInvoke(Ljava/lang/StackTraceElement;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0    # "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->getStackTrace()Ljava/util/List;

    move-result-object v0

    .line 172
    .restart local v0    # "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    const-string v2, "MMBI_SVC"

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StackTraceElement;

    invoke-direct {p0, v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->formatInvoke(Ljava/lang/StackTraceElement;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "aFormat"    # Ljava/lang/String;
    .param p2, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 97
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->mLevels:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 98
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->getStackTrace()Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    const-string v2, "MMBI_SVC"

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StackTraceElement;

    invoke-direct {p0, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->formatMessage(Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v0    # "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->mLevels:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "MMBI_SVC"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :cond_0
    return-void
.end method

.method public leave(I)V
    .locals 6
    .param p1, "aLevel"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 222
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->mLevels:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 223
    const v1, 0x8008

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 224
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->getStackTrace()Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    const-string v2, "MMBI_SVC"

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StackTraceElement;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "done"

    aput-object v4, v3, v5

    invoke-direct {p0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->formatReturn(Ljava/lang/StackTraceElement;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0    # "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->getStackTrace()Ljava/util/List;

    move-result-object v0

    .line 228
    .restart local v0    # "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    const-string v2, "MMBI_SVC"

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StackTraceElement;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "done"

    aput-object v4, v3, v5

    invoke-direct {p0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->formatReturn(Ljava/lang/StackTraceElement;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs leave(I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "aLevel"    # I
    .param p2, "aResult"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 194
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->mLevels:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 195
    const v1, 0x8008

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 196
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->getStackTrace()Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    const-string v2, "MMBI_SVC"

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StackTraceElement;

    invoke-direct {p0, v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->formatReturn(Ljava/lang/StackTraceElement;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v0    # "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->getStackTrace()Ljava/util/List;

    move-result-object v0

    .line 200
    .restart local v0    # "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    const-string v2, "MMBI_SVC"

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StackTraceElement;

    invoke-direct {p0, v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->formatReturn(Ljava/lang/StackTraceElement;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "aFormat"    # Ljava/lang/String;
    .param p2, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 120
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->mLevels:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 121
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->getStackTrace()Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    const-string v2, "MMBI_SVC"

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StackTraceElement;

    invoke-direct {p0, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwBasicLoggerSv;->formatMessage(Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v0    # "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    :cond_0
    return-void
.end method
