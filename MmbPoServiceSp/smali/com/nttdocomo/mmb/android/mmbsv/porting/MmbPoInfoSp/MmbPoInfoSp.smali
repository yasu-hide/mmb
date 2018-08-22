.class public Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;
.super Ljava/lang/Object;
.source "MmbPoInfoSp.java"


# static fields
.field private static final ANTENNA_INFO_35PHI:I = 0x2

.field private static final ANTENNA_INFO_CRADLE:I = 0x8

.field private static final ANTENNA_INFO_INTERNAL:I = 0x1

.field private static final ANTENNA_INFO_MICROUSB:I = 0x4

.field private static final ANTENNA_INFO_NONE:I = 0x0

.field private static final ANTENNA_INFO_OTHER:I = 0x10

.field public static final MMBPOINFOSP_SURFACE_LIMIT_SIZE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MmbPoInfoSp"

.field private static antennaInfo:I

.field private static recFunctionLoadedInfo:Z

.field private static surfaceViewportDimsMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 49
    const/4 v0, -0x1

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->surfaceViewportDimsMax:I

    .line 54
    sput-boolean v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->recFunctionLoadedInfo:Z

    .line 89
    sput v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->antennaInfo:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, "MmbPoInfoSp#<init>()"

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->debug(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;
    .locals 1
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 101
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "MmbPoInfoSp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "MmbPoInfoSp"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    return-void
.end method

.method private error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 170
    const-string v0, "MmbPoInfoSp"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "MmbPoInfoSp"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public getAntennaCapability()I
    .locals 1

    .prologue
    .line 184
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->antennaInfo:I

    return v0
.end method

.method public getSurfaceViewportDimsMax()I
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbPoInfoSp#getSurfaceViewportDimsMax() returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->surfaceViewportDimsMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->debug(Ljava/lang/String;)V

    .line 129
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->surfaceViewportDimsMax:I

    return v0
.end method

.method public hasRecordingFunction()Z
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbPoInfoSp#hasRecordingFunction() returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->recFunctionLoadedInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->debug(Ljava/lang/String;)V

    .line 158
    sget-boolean v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->recFunctionLoadedInfo:Z

    return v0
.end method
