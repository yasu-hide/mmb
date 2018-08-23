.class public final enum Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;
.super Ljava/lang/Enum;
.source "MmbMoInfoMw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbMoStorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

.field public static final enum STORAGE_EXTERNAL:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

.field public static final enum STORAGE_INTERNAL:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

.field public static final enum STORAGE_NON_COMPLIANT:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    const-string v1, "STORAGE_NON_COMPLIANT"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->STORAGE_NON_COMPLIANT:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    .line 66
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    const-string v1, "STORAGE_INTERNAL"

    invoke-direct {v0, v1, v4, v3}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->STORAGE_INTERNAL:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    .line 68
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    const-string v1, "STORAGE_EXTERNAL"

    invoke-direct {v0, v1, v5, v4}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->STORAGE_EXTERNAL:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    sget-object v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->STORAGE_NON_COMPLIANT:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->STORAGE_INTERNAL:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    aput-object v1, v0, v4

    sget-object v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->STORAGE_EXTERNAL:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    aput-object v1, v0, v5

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->$VALUES:[Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->value:I

    .line 76
    return-void
.end method

.method public static valueOf(I)Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;
    .locals 1
    .param p0, "aValue"    # I

    .prologue
    .line 82
    packed-switch p0, :pswitch_data_0

    .line 89
    sget-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->STORAGE_NON_COMPLIANT:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    :goto_0
    return-object v0

    .line 84
    :pswitch_0
    sget-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->STORAGE_INTERNAL:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    goto :goto_0

    .line 86
    :pswitch_1
    sget-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->STORAGE_EXTERNAL:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->$VALUES:[Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    invoke-virtual {v0}, [Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->value:I

    return v0
.end method
