.class public Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;
.super Ljava/lang/Object;
.source "MmbStRecCmMwCommonLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog$1;,
        Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog$MmbOutLogMode;
    }
.end annotation


# static fields
.field protected static final DATA_INFO_FLAG:Z

.field static final MODE:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog$MmbOutLogMode;


# instance fields
.field protected isDebuggableD:Z

.field protected isDebuggableE:Z

.field protected isDebuggableI:Z

.field protected isDebuggableV:Z

.field protected isDebuggableW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog$MmbOutLogMode;->MODE_RELEASE:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog$MmbOutLogMode;

    sput-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->MODE:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog$MmbOutLogMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableV:Z

    .line 34
    iput-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableD:Z

    .line 36
    iput-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableI:Z

    .line 38
    iput-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableW:Z

    .line 40
    iput-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableE:Z

    .line 66
    sget-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->MODE:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog$MmbOutLogMode;

    invoke-virtual {p0, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->mmbSetDebuggable(Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog$MmbOutLogMode;)V

    .line 67
    return-void
.end method


# virtual methods
.method public debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableD:Z

    if-nez v2, :cond_0

    .line 180
    :goto_0
    return-void

    .line 167
    :cond_0
    if-nez p1, :cond_1

    .line 168
    const-string v1, "null"

    .line 173
    .local v1, "tag":Ljava/lang/String;
    :goto_1
    if-nez p2, :cond_2

    .line 174
    const-string v0, "null"

    .line 179
    .local v0, "str":Ljava/lang/String;
    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    move-object v1, p1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_1

    .line 177
    :cond_2
    move-object v0, p2

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_2
.end method

.method public debugLogPrint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;
    .param p3, "aParam"    # I

    .prologue
    .line 189
    iget-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public debugLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;
    .param p3, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 202
    iget-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableE:Z

    if-nez v2, :cond_0

    .line 232
    :goto_0
    return-void

    .line 219
    :cond_0
    if-nez p1, :cond_1

    .line 220
    const-string v1, "null"

    .line 225
    .local v1, "tag":Ljava/lang/String;
    :goto_1
    if-nez p2, :cond_2

    .line 226
    const-string v0, "null"

    .line 231
    .local v0, "str":Ljava/lang/String;
    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    move-object v1, p1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_1

    .line 229
    :cond_2
    move-object v0, p2

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_2
.end method

.method public errorLogPrint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;
    .param p3, "aParam"    # I

    .prologue
    .line 241
    iget-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;
    .param p3, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 254
    iget-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableI:Z

    if-nez v2, :cond_0

    .line 128
    :goto_0
    return-void

    .line 115
    :cond_0
    if-nez p1, :cond_1

    .line 116
    const-string v1, "null"

    .line 121
    .local v1, "tag":Ljava/lang/String;
    :goto_1
    if-nez p2, :cond_2

    .line 122
    const-string v0, "null"

    .line 127
    .local v0, "str":Ljava/lang/String;
    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    move-object v1, p1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_1

    .line 125
    :cond_2
    move-object v0, p2

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_2
.end method

.method public infoLogPrint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;
    .param p3, "aParam"    # I

    .prologue
    .line 137
    iget-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public infoLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;
    .param p3, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 150
    iget-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method isMmbDebuggableD()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableD:Z

    return v0
.end method

.method isMmbDebuggableE()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableE:Z

    return v0
.end method

.method isMmbDebuggableI()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableI:Z

    return v0
.end method

.method isMmbDebuggableV()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableV:Z

    return v0
.end method

.method isMmbDebuggableW()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableW:Z

    return v0
.end method

.method public mmbSetDebuggable(Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog$MmbOutLogMode;)V
    .locals 3
    .param p1, "aMode"    # Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog$MmbOutLogMode;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 266
    iput-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableE:Z

    .line 267
    iput-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableW:Z

    .line 268
    iput-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableI:Z

    .line 269
    iput-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableD:Z

    .line 270
    iput-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableV:Z

    .line 272
    sget-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog$1;->$SwitchMap$mmb$android$MmbStRecCmMw$common$MmbStRecCmMwCommonLog$MmbOutLogMode:[I

    invoke-virtual {p1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog$MmbOutLogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 304
    :goto_0
    return-void

    .line 274
    :pswitch_0
    iput-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableI:Z

    .line 275
    iput-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableW:Z

    .line 276
    iput-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableE:Z

    goto :goto_0

    .line 279
    :pswitch_1
    iput-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableV:Z

    goto :goto_0

    .line 282
    :pswitch_2
    iput-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableD:Z

    goto :goto_0

    .line 285
    :pswitch_3
    iput-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableI:Z

    goto :goto_0

    .line 288
    :pswitch_4
    iput-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableW:Z

    goto :goto_0

    .line 291
    :pswitch_5
    iput-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableE:Z

    goto :goto_0

    .line 294
    :pswitch_6
    iput-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableE:Z

    .line 295
    iput-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableW:Z

    .line 296
    iput-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableI:Z

    .line 297
    iput-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableD:Z

    .line 298
    iput-boolean v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableV:Z

    goto :goto_0

    .line 272
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
