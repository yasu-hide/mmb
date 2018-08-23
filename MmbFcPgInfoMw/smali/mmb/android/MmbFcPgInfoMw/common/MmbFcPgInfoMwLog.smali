.class public Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog$1;,
        Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog$MmbOutLogMode;
    }
.end annotation


# static fields
.field private static final DEBUG_ENABLE:Z

.field static final MODE:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog$MmbOutLogMode;

.field public static final TAG:Ljava/lang/String; = "MmbFcPgInfoMw"


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

    sput-boolean v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->DEBUG_ENABLE:Z

    .line 32
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog$MmbOutLogMode;->MODE_ALL:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog$MmbOutLogMode;

    sput-object v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->MODE:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog$MmbOutLogMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableV:Z

    .line 38
    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableD:Z

    .line 41
    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableI:Z

    .line 44
    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableW:Z

    .line 47
    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableE:Z

    .line 73
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->MODE:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog$MmbOutLogMode;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->mmbSetDebuggable(Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog$MmbOutLogMode;)V

    .line 74
    return-void
.end method


# virtual methods
.method public isMmbDebuggableD()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableD:Z

    return v0
.end method

.method public isMmbDebuggableE()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableE:Z

    return v0
.end method

.method public isMmbDebuggableI()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableI:Z

    return v0
.end method

.method public isMmbDebuggableV()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableV:Z

    return v0
.end method

.method public isMmbDebuggableW()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableW:Z

    return v0
.end method

.method public mmbGetTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "MmbFcPgInfoMw"

    return-object v0
.end method

.method public mmbLogD(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogD(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 151
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogE(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 220
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogI(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogV(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogV(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableV:Z

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbLogW(Ljava/lang/String;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mmbLogW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aMsg"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 197
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableW:Z

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->mmbGetTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mmbSetDebuggable(Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog$MmbOutLogMode;)V
    .locals 3
    .param p1, "aMode"    # Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog$MmbOutLogMode;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 240
    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableE:Z

    .line 241
    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableW:Z

    .line 242
    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableI:Z

    .line 243
    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableD:Z

    .line 244
    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableV:Z

    .line 246
    sget-boolean v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->DEBUG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog$1;->$SwitchMap$mmb$android$MmbFcPgInfoMw$common$MmbFcPgInfoMwLog$MmbOutLogMode:[I

    invoke-virtual {p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog$MmbOutLogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 284
    :goto_0
    return-void

    .line 249
    :pswitch_0
    iput-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableI:Z

    .line 250
    iput-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableW:Z

    .line 251
    iput-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableE:Z

    goto :goto_0

    .line 255
    :pswitch_1
    iput-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableV:Z

    goto :goto_0

    .line 258
    :pswitch_2
    iput-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableD:Z

    goto :goto_0

    .line 261
    :pswitch_3
    iput-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableI:Z

    goto :goto_0

    .line 264
    :pswitch_4
    iput-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableW:Z

    goto :goto_0

    .line 267
    :pswitch_5
    iput-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableE:Z

    goto :goto_0

    .line 271
    :pswitch_6
    iput-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableE:Z

    .line 272
    iput-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableW:Z

    .line 273
    iput-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableI:Z

    .line 274
    iput-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableD:Z

    .line 275
    iput-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableV:Z

    goto :goto_0

    .line 281
    :cond_0
    iput-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableW:Z

    .line 282
    iput-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLog;->isDebuggableE:Z

    goto :goto_0

    .line 247
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
