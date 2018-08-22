.class public Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoUsbSp/MmbPoUsbSp;
.super Ljava/lang/Object;
.source "MmbPoUsbSp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbPoUsbSp"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "MmbPoUsbManagerSp#MmbPoUsbSp()"

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoUsbSp/MmbPoUsbSp;->debug(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static createObject()Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoUsbSp/MmbPoUsbSp;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoUsbSp/MmbPoUsbSp;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoUsbSp/MmbPoUsbSp;-><init>()V

    return-object v0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v0, "MmbPoUsbSp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "MmbPoUsbSp"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public isUsbAudioConnected(Landroid/content/Context;)Z
    .locals 5
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 76
    const-string v3, "MmbPoUsbManagerSp#isUsbAudioConnected()"

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoUsbSp/MmbPoUsbSp;->debug(Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x1

    .line 79
    .local v1, "result":Z
    :try_start_0
    const-string v3, "usb"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 80
    .local v2, "usbmanagerInstance":Landroid/hardware/usb/UsbManager;
    const-string v3, "audio_source"

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 84
    .end local v2    # "usbmanagerInstance":Landroid/hardware/usb/UsbManager;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbPoUsbManagerSp#isUsbAudioConnected() result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoUsbSp/MmbPoUsbSp;->debug(Ljava/lang/String;)V

    .line 85
    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "err":Ljava/lang/Exception;
    const-string v3, "Can Not get UsbAudioConnect status by UsbManager"

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoUsbSp/MmbPoUsbSp;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
