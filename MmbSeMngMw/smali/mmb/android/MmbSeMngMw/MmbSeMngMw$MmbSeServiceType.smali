.class public final enum Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;
.super Ljava/lang/Enum;
.source "MmbSeMngMw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbSeMngMw/MmbSeMngMw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbSeServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

.field public static final enum META_DATA_CRID_SERCH:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

.field public static final enum META_DATA_FREEWORD_SERCH:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

.field public static final enum META_DATA_HAISINN:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 486
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

    const-string v1, "META_DATA_HAISINN"

    invoke-direct {v0, v1, v2, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;->META_DATA_HAISINN:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

    .line 488
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

    const-string v1, "META_DATA_CRID_SERCH"

    invoke-direct {v0, v1, v3, v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;->META_DATA_CRID_SERCH:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

    .line 490
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

    const-string v1, "META_DATA_FREEWORD_SERCH"

    invoke-direct {v0, v1, v4, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;->META_DATA_FREEWORD_SERCH:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

    .line 484
    const/4 v0, 0x3

    new-array v0, v0, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;->META_DATA_HAISINN:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

    aput-object v1, v0, v2

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;->META_DATA_CRID_SERCH:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;->META_DATA_FREEWORD_SERCH:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

    aput-object v1, v0, v4

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;->$VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "aValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 496
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 497
    iput p3, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;->value:I

    .line 498
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 484
    const-class v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;
    .locals 1

    .prologue
    .line 484
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;->$VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

    invoke-virtual {v0}, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;->value:I

    return v0
.end method
