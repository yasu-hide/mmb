.class public Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwLogMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$1;,
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;
    }
.end annotation


# static fields
.field private static mLog:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->mLog:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;

    return-void
.end method

.method private static getLog()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->mLog:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;

    invoke-direct {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;-><init>()V

    sput-object v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->mLog:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;

    .line 165
    :cond_0
    sget-object v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->mLog:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;

    return-object v0
.end method

.method static isMmbDebuggableD()Z
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->getLog()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isMmbDebuggableD()Z

    move-result v0

    return v0
.end method

.method private static logCommon(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "mode"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;
    .param p1, "identification"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->getLog()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;

    move-result-object v3

    .line 171
    .local v3, "log":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const/4 v9, 0x4

    aget-object v1, v8, v9

    .line 174
    .local v1, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "className":Ljava/lang/String;
    const-string v7, "MmbCaCasDrmMw"

    .line 176
    .local v7, "tag":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 177
    .local v6, "posTag":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "methodName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    .line 186
    .local v2, "lineNumber":I
    if-nez p1, :cond_0

    .line 187
    const-string v8, "%s.%s() Line=%d %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, "outText":Ljava/lang/String;
    :goto_0
    sget-object v8, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$1;->$SwitchMap$mmb$android$MmbCaCasDrmMw$MmbCaCasDrmMwLogMgr$MmbOutLogMode:[I

    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 207
    invoke-virtual {v3, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 211
    :goto_1
    return-void

    .line 189
    .end local v5    # "outText":Ljava/lang/String;
    :cond_0
    const-string v8, "%s.%s(%s) Line=%d %s"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    aput-object p1, v9, v10

    const/4 v10, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "outText":Ljava/lang/String;
    goto :goto_0

    .line 194
    :pswitch_0
    invoke-virtual {v3, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbLogE(Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :pswitch_1
    invoke-virtual {v3, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbLogW(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :pswitch_2
    invoke-virtual {v3, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbLogI(Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :pswitch_3
    invoke-virtual {v3, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbLogD(Ljava/lang/String;)V

    goto :goto_1

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static logD(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->getLog()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isMmbDebuggableD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;->MODE_DEBUG:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logCommon(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method

.method static logE(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->getLog()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isMmbDebuggableE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;->MODE_ERROR:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logCommon(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method static logI(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->getLog()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isMmbDebuggableI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;->MODE_INFO:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logCommon(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method static logMethodEnd()V
    .locals 3

    .prologue
    .line 102
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->getLog()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isMmbDebuggableV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;->MODE_VERBOSE:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;

    const/4 v1, 0x0

    const-string v2, "End"

    invoke-static {v0, v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logCommon(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method static logMethodStart()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->getLog()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isMmbDebuggableV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;->MODE_VERBOSE:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;

    const/4 v1, 0x0

    const-string v2, "Start"

    invoke-static {v0, v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logCommon(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method static logV(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->getLog()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isMmbDebuggableV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;->MODE_VERBOSE:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logCommon(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr$MmbOutLogMode;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method
