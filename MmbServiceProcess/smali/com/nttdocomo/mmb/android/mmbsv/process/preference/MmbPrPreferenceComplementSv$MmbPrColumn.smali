.class final enum Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;
.super Ljava/lang/Enum;
.source "MmbPrPreferenceComplementSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MmbPrColumn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

.field public static final enum COLUMN_COMPLEMENT_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

.field public static final enum COLUMN_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

.field public static final enum COLUMN_IDENTIFICATION:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;


# instance fields
.field final mName:Ljava/lang/String;

.field final mOption:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    const-string v1, "COLUMN_ID"

    const-string v2, "_id"

    const-string v3, "integer primary key autoincrement"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->COLUMN_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    .line 47
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    const-string v1, "COLUMN_IDENTIFICATION"

    const-string v2, "identification"

    const-string v3, "text not null"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->COLUMN_IDENTIFICATION:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    .line 51
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    const-string v1, "COLUMN_COMPLEMENT_ID"

    const-string v2, "complementId"

    const-string v3, "text not null"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->COLUMN_COMPLEMENT_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->COLUMN_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->COLUMN_IDENTIFICATION:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->COLUMN_COMPLEMENT_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "aName"    # Ljava/lang/String;
    .param p4, "aOption"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->mName:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->mOption:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    return-object v0
.end method

.method public static values()[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    invoke-virtual {v0}, [Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceComplementSv$MmbPrColumn;

    return-object v0
.end method
