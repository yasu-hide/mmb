.class final enum Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;
.super Ljava/lang/Enum;
.source "MmbPrPreferencePgInfoSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MmbPrPgInfoColumn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

.field public static final enum COLUMN_BROADCASTER_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

.field public static final enum COLUMN_IPADDRESS:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

.field public static final enum COLUMN_PORT:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

.field public static final enum COLUMN_SERVICE_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

.field public static final enum COLUMN_TSI_PRIMARY:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

.field public static final enum COLUMN_TSI_SECONDARY:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;


# instance fields
.field final mName:Ljava/lang/String;

.field final mOption:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    const-string v1, "COLUMN_SERVICE_ID"

    const-string v2, "_serviceid"

    const-string v3, "integer primary key"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_SERVICE_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    .line 72
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    const-string v1, "COLUMN_BROADCASTER_ID"

    const-string v2, "broadcasterId"

    const-string v3, "integer"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_BROADCASTER_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    .line 76
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    const-string v1, "COLUMN_PORT"

    const-string v2, "port"

    const-string v3, "integer"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_PORT:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    .line 80
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    const-string v1, "COLUMN_TSI_PRIMARY"

    const-string v2, "tsi_primary"

    const-string v3, "integer"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_TSI_PRIMARY:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    .line 84
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    const-string v1, "COLUMN_TSI_SECONDARY"

    const-string v2, "tsi_secondary"

    const-string v3, "integer"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_TSI_SECONDARY:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    .line 88
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    const-string v1, "COLUMN_IPADDRESS"

    const/4 v2, 0x5

    const-string v3, "ipaddress"

    const-string v4, "text not null"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_IPADDRESS:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    .line 64
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_SERVICE_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_BROADCASTER_ID:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_PORT:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_TSI_PRIMARY:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_TSI_SECONDARY:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->COLUMN_IPADDRESS:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

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
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mName:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->mOption:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    return-object v0
.end method

.method public static values()[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    invoke-virtual {v0}, [Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferencePgInfoSv$MmbPrPgInfoColumn;

    return-object v0
.end method
