.class public Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;
.super Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;
.source "MmbFcPgInfoMwLogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;-><init>()V

    .line 25
    return-void
.end method

.method private varargs toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 164
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 167
    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "msg":Ljava/lang/String;
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public final varargs d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;
    .param p3, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 73
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->isMmbDebuggableD()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-direct {p0, p1, p3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->mmbLogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 59
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->isMmbDebuggableD()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->mmbLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;
    .param p3, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 151
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->isMmbDebuggableE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0, p1, p3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->mmbLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 137
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->isMmbDebuggableE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->mmbLogE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final varargs i(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;
    .param p3, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 99
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->isMmbDebuggableI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-direct {p0, p1, p3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->mmbLogI(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 85
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->isMmbDebuggableI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->mmbLogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final varargs v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;
    .param p3, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 47
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->isMmbDebuggableV()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-direct {p0, p1, p3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->mmbLogV(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 33
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->isMmbDebuggableV()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->mmbLogV(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final varargs w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;
    .param p3, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 125
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->isMmbDebuggableW()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0, p1, p3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->mmbLogW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 111
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->isMmbDebuggableW()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->mmbLogW(Ljava/lang/String;)V

    goto :goto_0
.end method
