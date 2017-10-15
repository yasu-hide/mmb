.class public Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;
.super Ljava/lang/Object;
.source "MtvBatteryInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvBatteryInfo"

.field private static latestBatteryInfo:Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;

.field private static mBatteryChargeStatus:Z

.field private static mBatteryLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->latestBatteryInfo:Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;

    .line 27
    sput-boolean v1, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->mBatteryChargeStatus:Z

    .line 28
    sput v1, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->mBatteryLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getBatteryLevel()I
    .locals 3

    .prologue
    .line 49
    const-string v0, "MtvBatteryInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getmBatteryLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget v0, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->mBatteryLevel:I

    return v0
.end method

.method public static getLatestBatteryInfo()Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->latestBatteryInfo:Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;

    return-object v0
.end method

.method public static isBatteryCharging()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->mBatteryChargeStatus:Z

    return v0
.end method

.method public static setBatteryCharging(Z)V
    .locals 3
    .param p0, "batteryChargeStat"    # Z

    .prologue
    .line 44
    const-string v0, "MtvBatteryInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmBatteryChargeStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sput-boolean p0, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->mBatteryChargeStatus:Z

    .line 46
    return-void
.end method

.method private static setBatteryLevel(I)V
    .locals 0
    .param p0, "batteryLevel"    # I

    .prologue
    .line 54
    sput p0, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->mBatteryLevel:I

    .line 55
    return-void
.end method

.method public static setLatestBatteryInfo(Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;)V
    .locals 0
    .param p0, "newBatteryInfo"    # Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;

    .prologue
    .line 77
    sput-object p0, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->latestBatteryInfo:Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;

    .line 78
    return-void
.end method

.method public static updateBatteryLevel(II)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "scale"    # I

    .prologue
    .line 58
    const-string v1, "MtvBatteryInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBatteryLevel: Level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    mul-int/lit8 v1, p0, 0x64

    div-int v0, v1, p1

    .line 68
    .local v0, "battery":I
    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->setBatteryLevel(I)V

    .line 70
    return-void
.end method
