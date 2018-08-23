.class public final enum Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;
.super Ljava/lang/Enum;
.source "MmbSeMngMw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbSeMngMw/MmbSeMngMw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbSeFlg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

.field public static final enum FLG_OFF:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

.field public static final enum FLG_ON:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

.field public static final enum FLG_ON_WIFI:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 517
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    const-string v1, "FLG_OFF"

    invoke-direct {v0, v1, v2, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_OFF:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    .line 519
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    const-string v1, "FLG_ON"

    invoke-direct {v0, v1, v3, v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_ON:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    .line 521
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    const-string v1, "FLG_ON_WIFI"

    invoke-direct {v0, v1, v4, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_ON_WIFI:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    .line 515
    const/4 v0, 0x3

    new-array v0, v0, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_OFF:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    aput-object v1, v0, v2

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_ON:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_ON_WIFI:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    aput-object v1, v0, v4

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->$VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

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
    .line 527
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 528
    iput p3, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->value:I

    .line 529
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 515
    const-class v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;
    .locals 1

    .prologue
    .line 515
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->$VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v0}, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->value:I

    return v0
.end method
