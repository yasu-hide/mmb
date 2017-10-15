.class public Lcom/samsung/sec/mtv/utility/MtvFeatures$MtvTargets;
.super Ljava/lang/Object;
.source "MtvFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/utility/MtvFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtvTargets"
.end annotation


# static fields
.field public static final HLTE_JPN_DCM:Ljava/lang/String; = "SC-01F"

.field public static final HLTE_JPN_KDI:Ljava/lang/String; = "SCL22"

.field public static final JFLTE_JPN_DCM:Ljava/lang/String; = "SC-04E"

.field public static final KLTE_JPN_DCM:Ljava/lang/String; = "SC-04F"

.field public static final KLTE_JPN_DCMACTIVE:Ljava/lang/String; = "SC-02G"

.field public static final KLTE_JPN_KDI:Ljava/lang/String; = "SCL23"

.field public static final XCOVER3LTE_JPN_DCM:Ljava/lang/String; = "SC-01H"

.field public static final ZEROFLTE_JPN_DCM:Ljava/lang/String; = "SC-05G"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isModel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "model"    # Ljava/lang/String;

    .prologue
    .line 129
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
