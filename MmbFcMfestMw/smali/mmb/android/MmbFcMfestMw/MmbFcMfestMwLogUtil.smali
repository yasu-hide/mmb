.class public Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;
.super Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;
.source "MmbFcMfestMwLogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;-><init>()V

    .line 26
    return-void
.end method

.method private varargs toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 160
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 163
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
.method public varargs d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;
    .param p3, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 72
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-direct {p0, p1, p3}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->mmbLogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 59
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->mmbLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;
    .param p3, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 147
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0, p1, p3}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->mmbLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 134
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->mmbLogE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs i(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;
    .param p3, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 97
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0, p1, p3}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->mmbLogI(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 84
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->mmbLogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;
    .param p3, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 47
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-direct {p0, p1, p3}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->mmbLogV(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 34
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->mmbLogV(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;
    .param p3, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 122
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-direct {p0, p1, p3}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->mmbLogW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 109
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->toString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->mmbLogW(Ljava/lang/String;)V

    goto :goto_0
.end method
