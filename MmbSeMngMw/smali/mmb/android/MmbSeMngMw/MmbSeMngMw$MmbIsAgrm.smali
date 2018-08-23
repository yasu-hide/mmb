.class public final enum Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;
.super Ljava/lang/Enum;
.source "MmbSeMngMw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbSeMngMw/MmbSeMngMw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbIsAgrm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

.field public static final enum AGREEMENT:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

.field public static final enum DISAGREEMENT:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 548
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

    const-string v1, "DISAGREEMENT"

    invoke-direct {v0, v1, v2, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;->DISAGREEMENT:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

    .line 550
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

    const-string v1, "AGREEMENT"

    invoke-direct {v0, v1, v3, v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;->AGREEMENT:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

    .line 546
    const/4 v0, 0x2

    new-array v0, v0, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;->DISAGREEMENT:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

    aput-object v1, v0, v2

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;->AGREEMENT:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

    aput-object v1, v0, v3

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;->$VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

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
    .line 556
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 557
    iput p3, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;->value:I

    .line 558
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 546
    const-class v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;
    .locals 1

    .prologue
    .line 546
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;->$VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

    invoke-virtual {v0}, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;->value:I

    return v0
.end method
