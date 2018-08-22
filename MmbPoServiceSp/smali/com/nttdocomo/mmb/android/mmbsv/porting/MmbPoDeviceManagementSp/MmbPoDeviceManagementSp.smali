.class public Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoDeviceManagementSp/MmbPoDeviceManagementSp;
.super Ljava/lang/Object;
.source "MmbPoDeviceManagementSp.java"


# static fields
.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MmbPoDeviceManagementSp"

.field private static final TZIC_FILE_PATH:Ljava/lang/String; = "dev/tzic"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "MmbPoInfoMp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "MmbPoDeviceManagementSp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "MmbPoDeviceManagementSp"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public getMDMState()Z
    .locals 7

    .prologue
    .line 70
    const-string v0, "MmbPoDeviceManagementSp#getTzicState() TZIC_ENABLED"

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoDeviceManagementSp/MmbPoDeviceManagementSp;->debug(Ljava/lang/String;)V

    .line 72
    .local v0, "result":Z

    const/4 v0, 0x1

    .line 74
    return v0
.end method
