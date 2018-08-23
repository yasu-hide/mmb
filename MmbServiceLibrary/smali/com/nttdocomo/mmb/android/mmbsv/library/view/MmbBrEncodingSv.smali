.class public final enum Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;
.super Ljava/lang/Enum;
.source "MmbBrEncodingSv.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

.field public static final enum EUC_JP:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

.field public static final enum ISO_2022_JP:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

.field public static final enum ISO_8859_1:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

.field public static final enum SHIFT_JIS:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

.field public static final enum US_ASCII:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

.field public static final enum UTF_16:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

.field public static final enum UTF_8:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    const-string v1, "UTF_8"

    invoke-direct {v0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->UTF_8:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    .line 32
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    const-string v1, "UTF_16"

    invoke-direct {v0, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->UTF_16:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    .line 37
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    const-string v1, "US_ASCII"

    invoke-direct {v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->US_ASCII:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    .line 42
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    const-string v1, "ISO_8859_1"

    invoke-direct {v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->ISO_8859_1:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    .line 47
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    const-string v1, "SHIFT_JIS"

    invoke-direct {v0, v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->SHIFT_JIS:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    .line 52
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    const-string v1, "EUC_JP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->EUC_JP:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    .line 57
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    const-string v1, "ISO_2022_JP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->ISO_2022_JP:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->UTF_8:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->UTF_16:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->US_ASCII:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->ISO_8859_1:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->SHIFT_JIS:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->EUC_JP:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->ISO_2022_JP:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    return-object v0
.end method

.method public static values()[Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    invoke-virtual {v0}, [Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    return-object v0
.end method
