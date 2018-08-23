.class public final enum Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;
.super Ljava/lang/Enum;
.source "MmbSeMngMw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbSeMngMw/MmbSeMngMw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbSeStorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

.field public static final enum STORAGE_EXTERNAL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

.field public static final enum STORAGE_FAIL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

.field public static final enum STORAGE_INTERNAL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

.field public static final enum STORAGE_NON_COMPLIANT:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;


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

    .line 658
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    const-string v1, "STORAGE_FAIL"

    const/16 v2, -0x64

    invoke-direct {v0, v1, v3, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->STORAGE_FAIL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    .line 659
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    const-string v1, "STORAGE_NON_COMPLIANT"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->STORAGE_NON_COMPLIANT:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    .line 660
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    const-string v1, "STORAGE_INTERNAL"

    invoke-direct {v0, v1, v5, v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->STORAGE_INTERNAL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    .line 661
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    const-string v1, "STORAGE_EXTERNAL"

    invoke-direct {v0, v1, v6, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->STORAGE_EXTERNAL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    .line 657
    const/4 v0, 0x4

    new-array v0, v0, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->STORAGE_FAIL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->STORAGE_NON_COMPLIANT:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    aput-object v1, v0, v4

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->STORAGE_INTERNAL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    aput-object v1, v0, v5

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->STORAGE_EXTERNAL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    aput-object v1, v0, v6

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->$VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

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
    .line 663
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 664
    iput p3, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->value:I

    .line 665
    return-void
.end method

.method public static valueOf(I)Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;
    .locals 1
    .param p0, "aValue"    # I

    .prologue
    .line 668
    packed-switch p0, :pswitch_data_0

    .line 677
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->STORAGE_FAIL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    :goto_0
    return-object v0

    .line 670
    :pswitch_0
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->STORAGE_INTERNAL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    goto :goto_0

    .line 672
    :pswitch_1
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->STORAGE_EXTERNAL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    goto :goto_0

    .line 674
    :pswitch_2
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->STORAGE_NON_COMPLIANT:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    goto :goto_0

    .line 668
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 657
    const-class v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;
    .locals 1

    .prologue
    .line 657
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->$VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    invoke-virtual {v0}, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->value:I

    return v0
.end method
