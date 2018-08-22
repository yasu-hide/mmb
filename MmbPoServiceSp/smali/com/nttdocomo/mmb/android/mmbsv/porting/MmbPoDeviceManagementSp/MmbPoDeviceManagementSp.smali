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
    const-string v0, "/system/lib/libMmbPoInfoMp.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

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
    const/4 v2, 0x0

    .line 72
    .local v2, "result":Z
    const/4 v4, -0x1

    .line 73
    .local v4, "ret":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoDeviceManagementSp/MmbPoDeviceManagementSp;->getTzicFlag()I

    move-result v4

    .line 74
    if-nez v4, :cond_1

    .line 75
    const/4 v2, 0x1

    .line 76
    const-string v5, "MmbPoDeviceManagementSp#getTzicState() TZIC_ENABLED"

    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoDeviceManagementSp/MmbPoDeviceManagementSp;->debug(Ljava/lang/String;)V

    .line 84
    :try_start_0
    const-string v5, "OemExtendedApi3LM"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IOemExtendedApi3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOemExtendedApi3LM;

    move-result-object v1

    .line 86
    .local v1, "oem3lm":Landroid/os/IOemExtendedApi3LM;
    if-eqz v1, :cond_0

    .line 87
    invoke-interface {v1}, Landroid/os/IOemExtendedApi3LM;->getOneSegState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 89
    const-string v5, "MmbPoDeviceManagementSp#getOneSegState() STATE_ENABLED"

    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoDeviceManagementSp/MmbPoDeviceManagementSp;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v2, 0x1

    .line 103
    .end local v1    # "oem3lm":Landroid/os/IOemExtendedApi3LM;
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MmbPoDeviceManagementSp#getMDMState() result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoDeviceManagementSp/MmbPoDeviceManagementSp;->debug(Ljava/lang/String;)V

    move v3, v2

    .line 104
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_1
    return v3

    .line 78
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_1
    const/4 v2, 0x0

    .line 79
    const-string v5, "MmbPoDeviceManagementSp#getTzicState() TZIC_DISABLED"

    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoDeviceManagementSp/MmbPoDeviceManagementSp;->debug(Ljava/lang/String;)V

    move v3, v2

    .line 80
    .restart local v3    # "result":I
    goto :goto_1

    .line 93
    .end local v3    # "result":I
    .restart local v1    # "oem3lm":Landroid/os/IOemExtendedApi3LM;
    :cond_2
    :try_start_1
    const-string v5, "MmbPoDeviceManagementSp#getOneSegState() STATE_DISABLED"

    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoDeviceManagementSp/MmbPoDeviceManagementSp;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    const/4 v2, 0x0

    goto :goto_0

    .line 97
    .end local v1    # "oem3lm":Landroid/os/IOemExtendedApi3LM;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MmbPoDeviceManagementSp#getOneSegState() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoDeviceManagementSp/MmbPoDeviceManagementSp;->debug(Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x0

    goto :goto_0
.end method

.method native getTzicFlag()I
.end method
