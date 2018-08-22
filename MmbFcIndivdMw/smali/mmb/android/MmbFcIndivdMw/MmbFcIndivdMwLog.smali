.class public Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;
.super Ljava/lang/Object;
.source "MmbFcIndivdMwLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog$1;,
        Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog$MmbOutLogMode;
    }
.end annotation


# static fields
.field static final MODE:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog$MmbOutLogMode;

.field static final TAG:Ljava/lang/String; = "MmbFcIndivdMw"


# instance fields
.field isDebuggableD:Z

.field isDebuggableE:Z

.field isDebuggableI:Z

.field isDebuggableV:Z

.field isDebuggableW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog$MmbOutLogMode;->MODE_RELEASE:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog$MmbOutLogMode;

    sput-object v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->MODE:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog$MmbOutLogMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableV:Z

    .line 32
    iput-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableD:Z

    .line 34
    iput-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableI:Z

    .line 36
    iput-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableW:Z

    .line 38
    iput-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableE:Z

    .line 56
    sget-object v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->MODE:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog$MmbOutLogMode;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbSetDebuggable(Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog$MmbOutLogMode;)V

    .line 57
    return-void
.end method


# virtual methods
.method public isMmbDebuggableD()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableD:Z

    return v0
.end method

.method public isMmbDebuggableE()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableE:Z

    return v0
.end method

.method public isMmbDebuggableI()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableI:Z

    return v0
.end method

.method public isMmbDebuggableV()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableV:Z

    return v0
.end method

.method public isMmbDebuggableW()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableW:Z

    return v0
.end method

.method public mmbGetTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const-string v0, "MmbFcIndivdMw"

    return-object v0
.end method

.method public mmbLogD(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogD(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 134
    iget-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogE(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 203
    iget-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogI(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 157
    iget-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogV(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogV(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    iget-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogW(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 180
    iget-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbSetDebuggable(Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog$MmbOutLogMode;)V
    .locals 3
    .param p1, "aMode"    # Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog$MmbOutLogMode;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 223
    iput-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableE:Z

    .line 224
    iput-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableW:Z

    .line 225
    iput-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableI:Z

    .line 226
    iput-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableD:Z

    .line 227
    iput-boolean v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableV:Z

    .line 229
    sget-object v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog$1;->$SwitchMap$mmb$android$MmbFcIndivdMw$MmbFcIndivdMwLog$MmbOutLogMode:[I

    invoke-virtual {p1}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog$MmbOutLogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 262
    :goto_0
    return-void

    .line 231
    :pswitch_0
    iput-boolean v2, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableI:Z

    .line 232
    iput-boolean v2, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableW:Z

    .line 233
    iput-boolean v2, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableE:Z

    goto :goto_0

    .line 237
    :pswitch_1
    iput-boolean v2, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableV:Z

    goto :goto_0

    .line 240
    :pswitch_2
    iput-boolean v2, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableD:Z

    goto :goto_0

    .line 243
    :pswitch_3
    iput-boolean v2, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableI:Z

    goto :goto_0

    .line 246
    :pswitch_4
    iput-boolean v2, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableW:Z

    goto :goto_0

    .line 249
    :pswitch_5
    iput-boolean v2, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableE:Z

    goto :goto_0

    .line 253
    :pswitch_6
    iput-boolean v2, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableE:Z

    .line 254
    iput-boolean v2, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableW:Z

    .line 255
    iput-boolean v2, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableI:Z

    .line 256
    iput-boolean v2, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableD:Z

    .line 257
    iput-boolean v2, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->isDebuggableV:Z

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
