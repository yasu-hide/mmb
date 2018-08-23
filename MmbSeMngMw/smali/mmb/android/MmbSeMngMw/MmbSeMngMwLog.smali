.class public Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;
.super Ljava/lang/Object;
.source "MmbSeMngMwLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbSeMngMw/MmbSeMngMwLog$1;,
        Lmmb/android/MmbSeMngMw/MmbSeMngMwLog$MmbOutLogMode;
    }
.end annotation


# static fields
.field static final MODE:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog$MmbOutLogMode;

.field static final TAG:Ljava/lang/String; = "MmbSeMngMw"


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
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog$MmbOutLogMode;->MODE_RELEASE:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog$MmbOutLogMode;

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->MODE:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog$MmbOutLogMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableV:Z

    .line 32
    iput-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableD:Z

    .line 34
    iput-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableI:Z

    .line 36
    iput-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableW:Z

    .line 38
    iput-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableE:Z

    .line 64
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->MODE:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog$MmbOutLogMode;

    invoke-virtual {p0, v0}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbSetDebuggable(Lmmb/android/MmbSeMngMw/MmbSeMngMwLog$MmbOutLogMode;)V

    .line 65
    return-void
.end method


# virtual methods
.method public isMmbDebuggableD()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableD:Z

    return v0
.end method

.method public isMmbDebuggableE()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableE:Z

    return v0
.end method

.method public isMmbDebuggableI()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableI:Z

    return v0
.end method

.method public isMmbDebuggableV()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableV:Z

    return v0
.end method

.method public isMmbDebuggableW()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableW:Z

    return v0
.end method

.method public mmbGetTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string v0, "MmbSeMngMw"

    return-object v0
.end method

.method public mmbLogD(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogD(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    iget-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogE(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 211
    iget-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogI(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 165
    iget-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogV(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogV(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    iget-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogW(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 188
    iget-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbSetDebuggable(Lmmb/android/MmbSeMngMw/MmbSeMngMwLog$MmbOutLogMode;)V
    .locals 3
    .param p1, "aMode"    # Lmmb/android/MmbSeMngMw/MmbSeMngMwLog$MmbOutLogMode;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 231
    iput-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableE:Z

    .line 232
    iput-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableW:Z

    .line 233
    iput-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableI:Z

    .line 234
    iput-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableD:Z

    .line 235
    iput-boolean v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableV:Z

    .line 237
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog$1;->$SwitchMap$mmb$android$MmbSeMngMw$MmbSeMngMwLog$MmbOutLogMode:[I

    invoke-virtual {p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog$MmbOutLogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iput-boolean v2, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableI:Z

    .line 240
    iput-boolean v2, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableW:Z

    .line 241
    iput-boolean v2, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableE:Z

    goto :goto_0

    .line 245
    :pswitch_1
    iput-boolean v2, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableV:Z

    goto :goto_0

    .line 248
    :pswitch_2
    iput-boolean v2, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableD:Z

    goto :goto_0

    .line 251
    :pswitch_3
    iput-boolean v2, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableI:Z

    goto :goto_0

    .line 254
    :pswitch_4
    iput-boolean v2, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableW:Z

    goto :goto_0

    .line 257
    :pswitch_5
    iput-boolean v2, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableE:Z

    goto :goto_0

    .line 261
    :pswitch_6
    iput-boolean v2, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableE:Z

    .line 262
    iput-boolean v2, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableW:Z

    .line 263
    iput-boolean v2, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableI:Z

    .line 264
    iput-boolean v2, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableD:Z

    .line 265
    iput-boolean v2, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->isDebuggableV:Z

    goto :goto_0

    .line 237
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
