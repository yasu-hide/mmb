.class public final enum Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;
.super Ljava/lang/Enum;
.source "MtvOneSegService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/broadcast/oneseg/MtvOneSegService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OneSegSVCSIType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

.field public static final enum BIT:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

.field public static final enum CHNLINFO:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

.field public static final enum NIT:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

.field public static final enum NONE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

.field public static final enum PMT:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

.field public static final enum SDT:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

.field public static final enum TOT:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->NONE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    .line 169
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    const-string v1, "PMT"

    invoke-direct {v0, v1, v4}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->PMT:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    .line 170
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    const-string v1, "NIT"

    invoke-direct {v0, v1, v5}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->NIT:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    .line 171
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    const-string v1, "BIT"

    invoke-direct {v0, v1, v6}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->BIT:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    .line 172
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    const-string v1, "TOT"

    invoke-direct {v0, v1, v7}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->TOT:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    .line 173
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    const-string v1, "SDT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->SDT:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    .line 174
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    const-string v1, "CHNLINFO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->CHNLINFO:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    .line 167
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->NONE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->PMT:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->NIT:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->BIT:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->TOT:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->SDT:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->CHNLINFO:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->$VALUES:[Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

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
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    const-class v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    return-object v0
.end method

.method public static values()[Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->$VALUES:[Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    invoke-virtual {v0}, [Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;

    return-object v0
.end method
