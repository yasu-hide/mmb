.class public final enum Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;
.super Ljava/lang/Enum;
.source "MmbFcBrowMwView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbFcBrowMwPauseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

.field public static final enum MMBFCBROWMW_PAUSE_BACKGROUND_PLAY:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

.field public static final enum MMBFCBROWMW_PAUSE_NO_RES_RELEASE:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

.field public static final enum MMBFCBROWMW_PAUSE_RES_RELEASE:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    const-string v1, "MMBFCBROWMW_PAUSE_BACKGROUND_PLAY"

    invoke-direct {v0, v1, v2, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->MMBFCBROWMW_PAUSE_BACKGROUND_PLAY:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    .line 294
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    const-string v1, "MMBFCBROWMW_PAUSE_RES_RELEASE"

    invoke-direct {v0, v1, v3, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->MMBFCBROWMW_PAUSE_RES_RELEASE:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    .line 295
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    const-string v1, "MMBFCBROWMW_PAUSE_NO_RES_RELEASE"

    invoke-direct {v0, v1, v4, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->MMBFCBROWMW_PAUSE_NO_RES_RELEASE:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    .line 292
    const/4 v0, 0x3

    new-array v0, v0, [Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->MMBFCBROWMW_PAUSE_BACKGROUND_PLAY:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    aput-object v1, v0, v2

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->MMBFCBROWMW_PAUSE_RES_RELEASE:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->MMBFCBROWMW_PAUSE_NO_RES_RELEASE:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    aput-object v1, v0, v4

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->$VALUES:[Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

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
    .line 302
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 303
    iput p3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->value:I

    .line 304
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 292
    const-class v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->$VALUES:[Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    invoke-virtual {v0}, [Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->value:I

    return v0
.end method
