.class public Lcom/samsung/sec/mtv/utility/MtvFeatures;
.super Ljava/lang/Object;
.source "MtvFeatures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/utility/MtvFeatures$MtvTargets;
    }
.end annotation


# static fields
.field public static final PLAY_BACK_MIDDLEWARE_TIME_LAPSE_SUPPORT:Z = true

.field public static final SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_3LM:Z = true

.field public static final SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_ANTDET:Z = false

.field public static final SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_AUDIOOUTPUTMODE:Z = false

.field public static final SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_COCKTAILBAR:Z = true

.field public static final SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_EXTERNALANTENNA:Z = true

.field public static final SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_HOVER:Z = true

.field public static final SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_MINIMODE:Z = true

.field public static final SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_SCOVER:Z = false

.field public static final SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_SDCARD:Z = true

.field public static final SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_SOUNDALIVE:Z = true

.field public static final SEC_PRODUCT_FEATURE_TMM_CONFLICT_HANDLER_ENABLED:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static hasExternalAntenna()Z
    .locals 2

    .prologue
    .line 89
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SC-05G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SC-04F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCL23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SC-02G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is3LMEnabled()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public static isAudioOutputModeEnabled()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public static isAutoAntennaEnabled()Z
    .locals 1

    .prologue
    .line 31
    const-string v0, "SC-01F"

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvFeatures$MtvTargets;->isModel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SCL22"

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvFeatures$MtvTargets;->isModel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SC-04E"

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvFeatures$MtvTargets;->isModel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCockTailBarSupported()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public static isConflicttHandlerEnabled()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public static isExternalAntennaRequired()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public static isHoverEnabled()Z
    .locals 2

    .prologue
    .line 44
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SC-05G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SC-01H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMiniModeEnabled()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public static isSCoverModeEnabled()Z
    .locals 1

    .prologue
    .line 71
    const-string v0, "SC-01F"

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvFeatures$MtvTargets;->isModel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SCL22"

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvFeatures$MtvTargets;->isModel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SC-04F"

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvFeatures$MtvTargets;->isModel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SCL23"

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvFeatures$MtvTargets;->isModel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDCardSupported()Z
    .locals 2

    .prologue
    .line 61
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SC-05G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSoundAliveSupported()Z
    .locals 2

    .prologue
    .line 52
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SC-05G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
