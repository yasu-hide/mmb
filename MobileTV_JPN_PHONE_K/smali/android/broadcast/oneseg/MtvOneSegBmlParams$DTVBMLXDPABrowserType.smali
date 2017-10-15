.class public final enum Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;
.super Ljava/lang/Enum;
.source "MtvOneSegBmlParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/broadcast/oneseg/MtvOneSegBmlParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DTVBMLXDPABrowserType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

.field public static final enum BML_START_RESIDENT_APP_C_PROFILE_BROWSER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

.field public static final enum BML_START_RESIDENT_APP_FULL_BROWSER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

.field public static final enum BML_START_RESIDENT_APP_LIVE_BROWSER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

.field public static final enum BML_START_RESIDENT_APP_MAX:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    const-string v1, "BML_START_RESIDENT_APP_C_PROFILE_BROWSER"

    invoke-direct {v0, v1, v2}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->BML_START_RESIDENT_APP_C_PROFILE_BROWSER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    .line 60
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    const-string v1, "BML_START_RESIDENT_APP_LIVE_BROWSER"

    invoke-direct {v0, v1, v3}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->BML_START_RESIDENT_APP_LIVE_BROWSER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    .line 61
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    const-string v1, "BML_START_RESIDENT_APP_FULL_BROWSER"

    invoke-direct {v0, v1, v4}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->BML_START_RESIDENT_APP_FULL_BROWSER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    .line 62
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    const-string v1, "BML_START_RESIDENT_APP_MAX"

    invoke-direct {v0, v1, v5}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->BML_START_RESIDENT_APP_MAX:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->BML_START_RESIDENT_APP_C_PROFILE_BROWSER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->BML_START_RESIDENT_APP_LIVE_BROWSER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->BML_START_RESIDENT_APP_FULL_BROWSER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->BML_START_RESIDENT_APP_MAX:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    aput-object v1, v0, v5

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->$VALUES:[Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    return-object v0
.end method

.method public static values()[Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->$VALUES:[Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    invoke-virtual {v0}, [Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;

    return-object v0
.end method
