.class final enum Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;
.super Ljava/lang/Enum;
.source "MmbFcVideoViewSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MmbFcAspectRatioSv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

.field public static final enum RATIO_16x9:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

.field public static final enum RATIO_4x3:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;


# instance fields
.field final height:I

.field final id:I

.field final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    const-string v1, "RATIO_16x9"

    const/16 v4, 0x10

    const/16 v5, 0x9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->RATIO_16x9:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    .line 56
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    const-string v4, "RATIO_4x3"

    const/4 v7, 0x4

    const/4 v8, 0x3

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->RATIO_4x3:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->RATIO_16x9:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->RATIO_4x3:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    aput-object v1, v0, v9

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "aId"    # I
    .param p4, "aWidth"    # I
    .param p5, "aHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->id:I

    .line 86
    iput p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->width:I

    .line 87
    iput p5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->height:I

    .line 88
    return-void
.end method

.method static synthetic access$000(I)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 46
    invoke-static {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->get(I)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    move-result-object v0

    return-object v0
.end method

.method private static get(I)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;
    .locals 5
    .param p0, "aId"    # I

    .prologue
    .line 100
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->values()[Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    move-result-object v0

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 101
    .local v3, "ratio":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;
    iget v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->id:I

    if-ne v4, p0, :cond_0

    .line 105
    .end local v3    # "ratio":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;
    :goto_1
    return-object v3

    .line 100
    .restart local v3    # "ratio":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v3    # "ratio":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;
    :cond_1
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->RATIO_16x9:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    return-object v0
.end method

.method public static values()[Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    invoke-virtual {v0}, [Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    return-object v0
.end method
