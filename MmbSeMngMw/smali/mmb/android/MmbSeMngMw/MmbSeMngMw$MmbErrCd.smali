.class public final enum Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;
.super Ljava/lang/Enum;
.source "MmbSeMngMw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbSeMngMw/MmbSeMngMw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbErrCd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

.field public static final enum ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

.field public static final enum ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

.field public static final enum ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

.field public static final enum ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 577
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    const-string v1, "ERR_NONE"

    invoke-direct {v0, v1, v3, v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    .line 579
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    const-string v1, "ERR_PARAM"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    .line 581
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    const-string v1, "ERR_UPDFAILES"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v5, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    .line 583
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    const-string v1, "ERR_OTHER"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v6, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    .line 575
    const/4 v0, 0x4

    new-array v0, v0, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    aput-object v1, v0, v4

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    aput-object v1, v0, v5

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    aput-object v1, v0, v6

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->$VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

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
    .line 589
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 590
    iput p3, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->value:I

    .line 591
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 575
    const-class v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;
    .locals 1

    .prologue
    .line 575
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->$VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v0}, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->value:I

    return v0
.end method
