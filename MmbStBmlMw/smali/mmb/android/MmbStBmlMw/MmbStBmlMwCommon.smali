.class public Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;
.super Ljava/lang/Object;
.source "MmbStBmlMwCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon$1;,
        Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon$MmbOutLogMode;
    }
.end annotation


# static fields
.field private static final DEBUG_ENABLE:Z

.field static final MODE:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon$MmbOutLogMode;


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
    .line 33
    const-string v0, "exist"

    const-string v1, "ro.mmb.tmmdebuglog"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->DEBUG_ENABLE:Z

    .line 36
    sget-object v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon$MmbOutLogMode;->MODE_ALL:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon$MmbOutLogMode;

    sput-object v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->MODE:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon$MmbOutLogMode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableV:Z

    .line 41
    iput-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableD:Z

    .line 43
    iput-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableI:Z

    .line 45
    iput-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableW:Z

    .line 47
    iput-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableE:Z

    .line 73
    sget-object v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->MODE:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon$MmbOutLogMode;

    invoke-virtual {p0, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->mmbSetDebuggable(Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon$MmbOutLogMode;)V

    .line 74
    return-void
.end method


# virtual methods
.method public debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isMmbDebuggableD()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableD:Z

    return v0
.end method

.method isMmbDebuggableE()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableE:Z

    return v0
.end method

.method isMmbDebuggableI()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableI:Z

    return v0
.end method

.method isMmbDebuggableV()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableV:Z

    return v0
.end method

.method isMmbDebuggableW()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableW:Z

    return v0
.end method

.method public mmbSetDebuggable(Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon$MmbOutLogMode;)V
    .locals 3
    .param p1, "aMode"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon$MmbOutLogMode;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 162
    iput-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableE:Z

    .line 163
    iput-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableW:Z

    .line 164
    iput-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableI:Z

    .line 165
    iput-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableD:Z

    .line 166
    iput-boolean v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableV:Z

    .line 168
    sget-boolean v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->DEBUG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon$1;->$SwitchMap$mmb$android$MmbStBmlMw$MmbStBmlMwCommon$MmbOutLogMode:[I

    invoke-virtual {p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon$MmbOutLogMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iput-boolean v2, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableI:Z

    .line 172
    iput-boolean v2, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableW:Z

    .line 173
    iput-boolean v2, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableE:Z

    goto :goto_0

    .line 177
    :pswitch_1
    iput-boolean v2, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableV:Z

    goto :goto_0

    .line 180
    :pswitch_2
    iput-boolean v2, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableD:Z

    goto :goto_0

    .line 183
    :pswitch_3
    iput-boolean v2, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableI:Z

    goto :goto_0

    .line 186
    :pswitch_4
    iput-boolean v2, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableW:Z

    goto :goto_0

    .line 189
    :pswitch_5
    iput-boolean v2, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableE:Z

    goto :goto_0

    .line 193
    :pswitch_6
    iput-boolean v2, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableE:Z

    .line 194
    iput-boolean v2, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableW:Z

    .line 195
    iput-boolean v2, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableI:Z

    .line 196
    iput-boolean v2, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableD:Z

    .line 197
    iput-boolean v2, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableV:Z

    goto :goto_0

    .line 203
    :cond_0
    iput-boolean v2, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableW:Z

    .line 204
    iput-boolean v2, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->isDebuggableE:Z

    goto :goto_0

    .line 169
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
