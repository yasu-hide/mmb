.class public Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;
.super Ljava/lang/Object;
.source "MmbFcMp4MwLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$1;,
        Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;
    }
.end annotation


# static fields
.field private static final DebugEnable:Z

.field static final MODE:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

.field static final TAG:Ljava/lang/String; = "MmbFcMp4Mw"


# instance fields
.field isDebuggableD:Z

.field isDebuggableE:Z

.field isDebuggableI:Z

.field isDebuggableV:Z

.field isDebuggableW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "exist"

    const-string v1, "ro.mmb.tmmdebuglog"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->DebugEnable:Z

    .line 37
    sget-object v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->MODE_ALL:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    sput-object v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->MODE:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableV:Z

    .line 43
    iput-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableD:Z

    .line 46
    iput-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableI:Z

    .line 49
    iput-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableW:Z

    .line 52
    iput-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableE:Z

    .line 85
    sget-object v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->MODE:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbSetDebuggable(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;)V

    .line 86
    return-void
.end method


# virtual methods
.method public isMmbDebuggableD()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableD:Z

    return v0
.end method

.method public isMmbDebuggableE()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableE:Z

    return v0
.end method

.method public isMmbDebuggableI()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableI:Z

    return v0
.end method

.method public isMmbDebuggableV()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableV:Z

    return v0
.end method

.method public isMmbDebuggableW()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableW:Z

    return v0
.end method

.method public mmbGetTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const-string v0, "MmbFcMp4Mw"

    return-object v0
.end method

.method public mmbLogD(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogD(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 163
    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogE(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 232
    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogI(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 186
    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogV(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogV(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 140
    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogW(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 209
    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbSetDebuggable(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;)V
    .locals 3
    .param p1, "aMode"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 252
    iput-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableE:Z

    .line 253
    iput-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableW:Z

    .line 254
    iput-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableI:Z

    .line 255
    iput-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableD:Z

    .line 256
    iput-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableV:Z

    .line 259
    sget-boolean v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->DebugEnable:Z

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$1;->$SwitchMap$mmb$android$MmbFcMp4Mw$MmbFcMp4MwLog$MmbOutLogMode:[I

    invoke-virtual {p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 263
    :pswitch_0
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableI:Z

    .line 264
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableW:Z

    .line 265
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableE:Z

    goto :goto_0

    .line 269
    :pswitch_1
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableV:Z

    goto :goto_0

    .line 272
    :pswitch_2
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableD:Z

    goto :goto_0

    .line 275
    :pswitch_3
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableI:Z

    goto :goto_0

    .line 278
    :pswitch_4
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableW:Z

    goto :goto_0

    .line 281
    :pswitch_5
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableE:Z

    goto :goto_0

    .line 285
    :pswitch_6
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableE:Z

    .line 286
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableW:Z

    .line 287
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableI:Z

    .line 288
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableD:Z

    .line 289
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableV:Z

    goto :goto_0

    .line 297
    :cond_0
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableI:Z

    .line 298
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableW:Z

    .line 299
    iput-boolean v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->isDebuggableE:Z

    goto :goto_0

    .line 261
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
