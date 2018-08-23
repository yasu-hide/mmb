.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog$1;,
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog$MmbOutLogMode;
    }
.end annotation


# static fields
.field private static final CAS_DEBUG_ENABLE:Z = false

.field private static final CAS_DEBUG_FILE:Ljava/lang/String; = "/data/local/tmp/casdebug"

.field private static final DEBUG_ENABLE:Z

.field private static final MODE:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog$MmbOutLogMode;

.field private static final TAG:Ljava/lang/String; = "MmbCaCasDrmMw_CLJ"


# instance fields
.field private isDebuggableD:Z

.field private isDebuggableE:Z

.field private isDebuggableI:Z

.field private isDebuggableV:Z

.field private isDebuggableW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "exist"

    const-string v1, "ro.mmb.tmmdebuglog"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->DEBUG_ENABLE:Z

    .line 39
    sget-object v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog$MmbOutLogMode;->MODE_ALL:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog$MmbOutLogMode;

    sput-object v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->MODE:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog$MmbOutLogMode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableV:Z

    .line 44
    iput-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableD:Z

    .line 46
    iput-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableI:Z

    .line 48
    iput-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableW:Z

    .line 50
    iput-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableE:Z

    .line 76
    sget-object v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->MODE:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog$MmbOutLogMode;

    invoke-virtual {p0, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbSetDebuggable(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog$MmbOutLogMode;)V

    .line 77
    return-void
.end method


# virtual methods
.method isMmbDebuggableD()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableD:Z

    return v0
.end method

.method isMmbDebuggableE()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableE:Z

    return v0
.end method

.method isMmbDebuggableI()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableI:Z

    return v0
.end method

.method isMmbDebuggableV()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableV:Z

    return v0
.end method

.method isMmbDebuggableW()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableW:Z

    return v0
.end method

.method mmbGetTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-string v0, "MmbCaCasDrmMw_CLJ"

    return-object v0
.end method

.method mmbLogD(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method mmbLogD(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 154
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method mmbLogE(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method mmbLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 223
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method mmbLogI(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method mmbLogI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 177
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method mmbLogV(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method mmbLogV(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 131
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method mmbLogW(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method mmbLogW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 200
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method mmbSetDebuggable(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog$MmbOutLogMode;)V
    .locals 3
    .param p1, "aMode"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog$MmbOutLogMode;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 243
    iput-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableE:Z

    .line 244
    iput-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableW:Z

    .line 245
    iput-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableI:Z

    .line 246
    iput-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableD:Z

    .line 247
    iput-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableV:Z

    .line 249
    sget-boolean v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->DEBUG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog$1;->$SwitchMap$mmb$android$MmbCaCasDrmMw$MmbCaCasDrmMwLog$MmbOutLogMode:[I

    invoke-virtual {p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog$MmbOutLogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableI:Z

    .line 253
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableW:Z

    .line 254
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableE:Z

    goto :goto_0

    .line 258
    :pswitch_1
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableV:Z

    goto :goto_0

    .line 261
    :pswitch_2
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableD:Z

    goto :goto_0

    .line 264
    :pswitch_3
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableI:Z

    goto :goto_0

    .line 267
    :pswitch_4
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableW:Z

    goto :goto_0

    .line 270
    :pswitch_5
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableE:Z

    goto :goto_0

    .line 274
    :pswitch_6
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableE:Z

    .line 275
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableW:Z

    goto :goto_0

    .line 286
    :cond_0
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableW:Z

    .line 287
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLog;->isDebuggableE:Z

    goto :goto_0

    .line 250
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
