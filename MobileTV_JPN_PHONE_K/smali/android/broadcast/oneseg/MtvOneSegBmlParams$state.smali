.class public final enum Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;
.super Ljava/lang/Enum;
.source "MtvOneSegBmlParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/broadcast/oneseg/MtvOneSegBmlParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "state"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

.field public static final enum MTV_STAT_BML_HALT_APPBYKERNEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

.field public static final enum MTV_STAT_BML_HALT_NONE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

.field public static final enum MTV_STAT_BML_HALT_PEER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

.field public static final enum MTV_STAT_BML_QUIT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

.field public static final enum MTV_STAT_HALT_APPLICATION:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

.field public static final enum MTV_STAT_HALT_CRITICAL_ABORT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

.field public static final enum MTV_STAT_HALT_DORMANT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

.field public static final enum MTV_STAT_HALT_EMPTY_CAROUSEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

.field public static final enum MTV_STAT_HALT_ERROR:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

.field public static final enum MTV_STAT_HALT_TUNEDBYKERNEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

.field public static final enum MTV_STAT_HALT_USER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    const-string v1, "MTV_STAT_BML_HALT_NONE"

    invoke-direct {v0, v1, v3}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_HALT_NONE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 72
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    const-string v1, "MTV_STAT_BML_HALT_PEER"

    invoke-direct {v0, v1, v4}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_HALT_PEER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 76
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    const-string v1, "MTV_STAT_BML_HALT_APPBYKERNEL"

    invoke-direct {v0, v1, v5}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_HALT_APPBYKERNEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 78
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    const-string v1, "MTV_STAT_BML_QUIT"

    invoke-direct {v0, v1, v6}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_QUIT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 80
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    const-string v1, "MTV_STAT_HALT_APPLICATION"

    invoke-direct {v0, v1, v7}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_APPLICATION:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 82
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    const-string v1, "MTV_STAT_HALT_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_ERROR:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 84
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    const-string v1, "MTV_STAT_HALT_CRITICAL_ABORT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_CRITICAL_ABORT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 86
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    const-string v1, "MTV_STAT_HALT_USER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_USER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 88
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    const-string v1, "MTV_STAT_HALT_DORMANT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_DORMANT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 90
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    const-string v1, "MTV_STAT_HALT_EMPTY_CAROUSEL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_EMPTY_CAROUSEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 92
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    const-string v1, "MTV_STAT_HALT_TUNEDBYKERNEL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_TUNEDBYKERNEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    .line 68
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_HALT_NONE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    aput-object v1, v0, v3

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_HALT_PEER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    aput-object v1, v0, v4

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_HALT_APPBYKERNEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    aput-object v1, v0, v5

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_BML_QUIT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    aput-object v1, v0, v6

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_APPLICATION:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_ERROR:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_CRITICAL_ABORT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_USER:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_DORMANT:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_EMPTY_CAROUSEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->MTV_STAT_HALT_TUNEDBYKERNEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    aput-object v2, v0, v1

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->$VALUES:[Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    const-class v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    return-object v0
.end method

.method public static values()[Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->$VALUES:[Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    invoke-virtual {v0}, [Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;

    return-object v0
.end method
