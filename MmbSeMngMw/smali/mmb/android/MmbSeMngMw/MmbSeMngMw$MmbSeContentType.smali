.class public final enum Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;
.super Ljava/lang/Enum;
.source "MmbSeMngMw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbSeMngMw/MmbSeMngMw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbSeContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

.field public static final enum CONTENT_DOWNLOAD:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

.field public static final enum CONTENT_RECORD:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 629
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    const-string v1, "CONTENT_DOWNLOAD"

    invoke-direct {v0, v1, v3, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->CONTENT_DOWNLOAD:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    .line 630
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    const-string v1, "CONTENT_RECORD"

    invoke-direct {v0, v1, v2, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->CONTENT_RECORD:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    .line 628
    new-array v0, v4, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->CONTENT_DOWNLOAD:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->CONTENT_RECORD:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    aput-object v1, v0, v2

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->$VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

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
    .line 632
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 633
    iput p3, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->value:I

    .line 634
    return-void
.end method

.method public static valueOf(I)Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;
    .locals 1
    .param p0, "aValue"    # I

    .prologue
    .line 637
    packed-switch p0, :pswitch_data_0

    .line 643
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 639
    :pswitch_0
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->CONTENT_DOWNLOAD:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    goto :goto_0

    .line 641
    :pswitch_1
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->CONTENT_RECORD:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    goto :goto_0

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 628
    const-class v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;
    .locals 1

    .prologue
    .line 628
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->$VALUES:[Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    invoke-virtual {v0}, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->value:I

    return v0
.end method
