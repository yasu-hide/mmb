.class public Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;
.super Ljava/lang/Object;
.source "MmbFcBrowMwLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$1;,
        Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;
    }
.end annotation


# static fields
.field static final MODE:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;

.field static final TAG:Ljava/lang/String; = "MmbFcBrowMw"


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
    .line 33
    sget-object v0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;->MODE_RELEASE:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;

    sput-object v0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->MODE:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableV:Z

    .line 38
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableD:Z

    .line 40
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableI:Z

    .line 42
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableW:Z

    .line 44
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableE:Z

    .line 70
    sget-object v0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->MODE:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbSetDebuggable(Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;)V

    .line 71
    return-void
.end method


# virtual methods
.method public isMmbDebuggableD()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableD:Z

    return v0
.end method

.method public isMmbDebuggableE()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableE:Z

    return v0
.end method

.method public isMmbDebuggableI()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableI:Z

    return v0
.end method

.method public isMmbDebuggableV()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableV:Z

    return v0
.end method

.method public isMmbDebuggableW()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableW:Z

    return v0
.end method

.method public mmbGetTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, "MmbFcBrowMw"

    return-object v0
.end method

.method public mmbLogD(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogD(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 148
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogE(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 217
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogI(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 171
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogV(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogV(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 125
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogW(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 194
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbSetDebuggable(Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;)V
    .locals 3
    .param p1, "aMode"    # Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 237
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableE:Z

    .line 238
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableW:Z

    .line 239
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableI:Z

    .line 240
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableD:Z

    .line 241
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableV:Z

    .line 243
    sget-object v0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$1;->$SwitchMap$mmb$android$MmbFcBrowMw$common$MmbFcBrowMwLog$MmbOutLogMode:[I

    invoke-virtual {p1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 245
    :pswitch_0
    iput-boolean v2, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableW:Z

    .line 246
    iput-boolean v2, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableE:Z

    goto :goto_0

    .line 250
    :pswitch_1
    iput-boolean v2, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableV:Z

    goto :goto_0

    .line 253
    :pswitch_2
    iput-boolean v2, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableD:Z

    goto :goto_0

    .line 256
    :pswitch_3
    iput-boolean v2, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableI:Z

    goto :goto_0

    .line 259
    :pswitch_4
    iput-boolean v2, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableW:Z

    goto :goto_0

    .line 262
    :pswitch_5
    iput-boolean v2, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableE:Z

    goto :goto_0

    .line 266
    :pswitch_6
    iput-boolean v2, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableE:Z

    .line 267
    iput-boolean v2, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableW:Z

    .line 268
    iput-boolean v2, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableI:Z

    .line 269
    iput-boolean v2, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableD:Z

    .line 270
    iput-boolean v2, p0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->isDebuggableV:Z

    goto :goto_0

    .line 243
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
