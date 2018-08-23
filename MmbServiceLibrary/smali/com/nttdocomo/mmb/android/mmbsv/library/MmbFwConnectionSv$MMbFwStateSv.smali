.class final enum Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;
.super Ljava/lang/Enum;
.source "MmbFwConnectionSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MMbFwStateSv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

.field public static final enum CONNECTED:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

.field public static final enum CONNECTING:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

.field public static final enum DISCONNECTED:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

.field public static final enum DISCONNECTING:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->CONNECTING:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    .line 79
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->CONNECTED:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    .line 84
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->DISCONNECTING:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    .line 89
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->DISCONNECTED:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->CONNECTING:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->CONNECTED:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->DISCONNECTING:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->DISCONNECTED:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    return-object v0
.end method

.method public static values()[Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    invoke-virtual {v0}, [Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    return-object v0
.end method
