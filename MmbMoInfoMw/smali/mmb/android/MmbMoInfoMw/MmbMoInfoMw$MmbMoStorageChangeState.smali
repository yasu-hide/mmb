.class public final enum Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;
.super Ljava/lang/Enum;
.source "MmbMoInfoMw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbMoStorageChangeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

.field public static final enum IMPOSSIBLE_CHANGE_STORAGE:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

.field public static final enum NON_COMPLIANT_CONTENT:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

.field public static final enum POSSIBLE_CHANGE_STORAGE:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    const-string v1, "NON_COMPLIANT_CONTENT"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->NON_COMPLIANT_CONTENT:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    .line 112
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    const-string v1, "IMPOSSIBLE_CHANGE_STORAGE"

    invoke-direct {v0, v1, v4, v3}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->IMPOSSIBLE_CHANGE_STORAGE:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    .line 114
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    const-string v1, "POSSIBLE_CHANGE_STORAGE"

    invoke-direct {v0, v1, v5, v4}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->POSSIBLE_CHANGE_STORAGE:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    sget-object v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->NON_COMPLIANT_CONTENT:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->IMPOSSIBLE_CHANGE_STORAGE:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    aput-object v1, v0, v4

    sget-object v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->POSSIBLE_CHANGE_STORAGE:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    aput-object v1, v0, v5

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->$VALUES:[Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

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
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput p3, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->value:I

    .line 122
    return-void
.end method

.method public static valueOf(I)Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;
    .locals 1
    .param p0, "aValue"    # I

    .prologue
    .line 125
    packed-switch p0, :pswitch_data_0

    .line 132
    sget-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->NON_COMPLIANT_CONTENT:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    :goto_0
    return-object v0

    .line 127
    :pswitch_0
    sget-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->IMPOSSIBLE_CHANGE_STORAGE:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    goto :goto_0

    .line 129
    :pswitch_1
    sget-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->POSSIBLE_CHANGE_STORAGE:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    const-class v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->$VALUES:[Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    invoke-virtual {v0}, [Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->value:I

    return v0
.end method
