.class public final enum Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;
.super Ljava/lang/Enum;
.source "MmbMoInfoMw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbMoContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

.field public static final enum CONTENT_DOWNLOAD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

.field public static final enum CONTENT_RECORD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 35
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    const-string v1, "CONTENT_DOWNLOAD"

    invoke-direct {v0, v1, v3, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->CONTENT_DOWNLOAD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    .line 37
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    const-string v1, "CONTENT_RECORD"

    invoke-direct {v0, v1, v2, v4}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->CONTENT_RECORD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    .line 33
    new-array v0, v4, [Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    sget-object v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->CONTENT_DOWNLOAD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->CONTENT_RECORD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    aput-object v1, v0, v2

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->$VALUES:[Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->value:I

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->$VALUES:[Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    invoke-virtual {v0}, [Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->value:I

    return v0
.end method
