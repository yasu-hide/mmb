.class public Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;
.super Ljava/lang/Object;
.source "MmbPoBluetoothSp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbPoBluetoothSp"


# instance fields
.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp$1;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 126
    const-string v0, "MmbPoBluetoothSp#<init>()"

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;->debug(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;
    .locals 4
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 104
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;-><init>(Landroid/content/Context;)V

    .line 105
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;
    const-string v2, "MmbPoBluetoothSp#createObject"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;->debug(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 108
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 109
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 114
    :goto_0
    return-object v1

    .line 111
    :cond_0
    const-string v2, "MmbPoBluetoothSp#createObject adapter is null"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "MmbPoBluetoothSp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "MmbPoBluetoothSp"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    return-void
.end method

.method private error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 186
    const-string v0, "MmbPoBluetoothSp"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "MmbPoBluetoothSp"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public closeObject()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public getA2DP()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public isDevicesConnected()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public isScmstSupported()Z
    .locals 5

    .prologue
    .line 143
    const-string v3, "MmbPoBluetoothSp#isScmstSupported()"

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;->debug(Ljava/lang/String;)V

    .line 144
    const/4 v1, 0x0

    .line 147
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 149
    .local v2, "ret":I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 150
    .local v0, "mAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isHeadsetScmstSupported()I

    move-result v2

    .line 152
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 153
    const/4 v1, 0x1

    .line 159
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbPoBluetoothSp#isScmstSupported() returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;->debug(Ljava/lang/String;)V

    .line 160
    return v1

    .line 156
    :cond_1
    const-string v3, "MmbPoBluetoothSp#isScmstSupported() mAdapter is null"

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
