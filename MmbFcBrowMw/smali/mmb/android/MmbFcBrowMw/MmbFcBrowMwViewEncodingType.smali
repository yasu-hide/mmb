.class public final enum Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;
.super Ljava/lang/Enum;
.source "MmbFcBrowMwViewEncodingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

.field public static final enum EUC_JP:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

.field public static final enum ISO_2022_JP:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

.field public static final enum ISO_8859_1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

.field public static final enum SHIFT_JIS:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

.field public static final enum US_ASCII:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

.field public static final enum UTF_16:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

.field public static final enum UTF_8:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    const-string v1, "UTF_8"

    invoke-direct {v0, v1, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->UTF_8:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    .line 34
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    const-string v1, "UTF_16"

    invoke-direct {v0, v1, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->UTF_16:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    .line 38
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    const-string v1, "US_ASCII"

    invoke-direct {v0, v1, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->US_ASCII:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    .line 42
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    const-string v1, "ISO_8859_1"

    invoke-direct {v0, v1, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->ISO_8859_1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    .line 46
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    const-string v1, "SHIFT_JIS"

    invoke-direct {v0, v1, v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->SHIFT_JIS:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    .line 50
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    const-string v1, "EUC_JP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->EUC_JP:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    .line 54
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    const-string v1, "ISO_2022_JP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->ISO_2022_JP:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->UTF_8:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->UTF_16:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    aput-object v1, v0, v4

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->US_ASCII:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    aput-object v1, v0, v5

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->ISO_8859_1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    aput-object v1, v0, v6

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->SHIFT_JIS:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->EUC_JP:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->ISO_2022_JP:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    aput-object v2, v0, v1

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->$VALUES:[Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->$VALUES:[Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    invoke-virtual {v0}, [Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    return-object v0
.end method
