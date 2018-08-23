.class public Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;
.super Ljava/lang/Object;
.source "MmbFcMfestMwLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog$1;,
        Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog$MmbOutLogMode;
    }
.end annotation


# static fields
.field static final MODE:Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog$MmbOutLogMode;

.field static final TAG:Ljava/lang/String; = "MmbFcMfestMw"


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
    .line 29
    sget-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog$MmbOutLogMode;->MODE_RELEASE:Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog$MmbOutLogMode;

    sput-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->MODE:Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog$MmbOutLogMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableV:Z

    .line 35
    iput-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableD:Z

    .line 37
    iput-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableI:Z

    .line 39
    iput-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableW:Z

    .line 41
    iput-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableE:Z

    .line 67
    sget-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->MODE:Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog$MmbOutLogMode;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->mmbSetDebuggable(Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog$MmbOutLogMode;)V

    .line 68
    return-void
.end method


# virtual methods
.method public isMmbDebuggableD()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableD:Z

    return v0
.end method

.method public isMmbDebuggableE()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableE:Z

    return v0
.end method

.method public isMmbDebuggableI()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableI:Z

    return v0
.end method

.method public isMmbDebuggableV()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableV:Z

    return v0
.end method

.method public isMmbDebuggableW()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableW:Z

    return v0
.end method

.method public mmbGetTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    const-string v0, "MmbFcMfestMw"

    return-object v0
.end method

.method public mmbLogD(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogD(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 145
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogE(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 214
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogI(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 168
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogV(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogV(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogW(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 191
    iget-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbSetDebuggable(Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog$MmbOutLogMode;)V
    .locals 3
    .param p1, "aMode"    # Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog$MmbOutLogMode;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 234
    iput-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableE:Z

    .line 235
    iput-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableW:Z

    .line 236
    iput-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableI:Z

    .line 237
    iput-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableD:Z

    .line 238
    iput-boolean v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableV:Z

    .line 240
    sget-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog$1;->$SwitchMap$mmb$android$MmbFcMfestMw$MmbFcMfestMwLog$MmbOutLogMode:[I

    invoke-virtual {p1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog$MmbOutLogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iput-boolean v2, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableI:Z

    .line 243
    iput-boolean v2, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableW:Z

    .line 244
    iput-boolean v2, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableE:Z

    goto :goto_0

    .line 248
    :pswitch_1
    iput-boolean v2, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableV:Z

    goto :goto_0

    .line 251
    :pswitch_2
    iput-boolean v2, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableD:Z

    goto :goto_0

    .line 254
    :pswitch_3
    iput-boolean v2, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableI:Z

    goto :goto_0

    .line 257
    :pswitch_4
    iput-boolean v2, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableW:Z

    goto :goto_0

    .line 260
    :pswitch_5
    iput-boolean v2, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableE:Z

    goto :goto_0

    .line 264
    :pswitch_6
    iput-boolean v2, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableE:Z

    .line 265
    iput-boolean v2, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableW:Z

    .line 266
    iput-boolean v2, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableI:Z

    .line 267
    iput-boolean v2, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableD:Z

    .line 268
    iput-boolean v2, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLog;->isDebuggableV:Z

    goto :goto_0

    .line 240
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
