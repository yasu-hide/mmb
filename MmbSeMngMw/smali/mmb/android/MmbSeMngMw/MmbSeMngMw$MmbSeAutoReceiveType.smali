.class public final enum Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;
.super Ljava/lang/Enum;
.source "MmbSeMngMw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbSeMngMw/MmbSeMngMw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbSeAutoReceiveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

.field public static final enum AUTO_RECEIVE_TYPE_ALL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

.field public static final enum AUTO_RECEIVE_TYPE_AUTO:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

.field public static final enum AUTO_RECEIVE_TYPE_FORCE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

.field public static final enum AUTO_RECEIVE_TYPE_RECOMMEND:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 609
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    const-string v1, "AUTO_RECEIVE_TYPE_ALL"

    invoke-direct {v0, v1, v2, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_ALL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    .line 610
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    const-string v1, "AUTO_RECEIVE_TYPE_RECOMMEND"

    invoke-direct {v0, v1, v3, v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_RECOMMEND:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    .line 611
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    const-string v1, "AUTO_RECEIVE_TYPE_FORCE"

    invoke-direct {v0, v1, v4, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_FORCE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    .line 612
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    const-string v1, "AUTO_RECEIVE_TYPE_AUTO"

    invoke-direct {v0, v1, v5, v5}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_AUTO:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    .line 608
    const/4 v0, 0x4

    new-array v0, v0, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_ALL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    aput-object v1, v0, v2

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_RECOMMEND:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_FORCE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    aput-object v1, v0, v4

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_AUTO:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    aput-object v1, v0, v5

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->$VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

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
    .line 614
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 615
    iput p3, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->value:I

    .line 616
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 608
    const-class v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;
    .locals 1

    .prologue
    .line 608
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->$VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    invoke-virtual {v0}, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->value:I

    return v0
.end method
