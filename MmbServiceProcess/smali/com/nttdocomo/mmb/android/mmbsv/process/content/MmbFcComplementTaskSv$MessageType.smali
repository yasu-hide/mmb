.class final enum Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;
.super Ljava/lang/Enum;
.source "MmbFcComplementTaskSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

.field public static final enum EXIT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

.field public static final enum INTERRUPT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

.field public static final enum REPAIR:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

.field public static final enum REPAIR_FDT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    const-string v1, "REPAIR"

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->REPAIR:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    .line 137
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    const-string v1, "REPAIR_FDT"

    invoke-direct {v0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->REPAIR_FDT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    .line 142
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    const-string v1, "EXIT"

    invoke-direct {v0, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->EXIT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    .line 147
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    const-string v1, "INTERRUPT"

    invoke-direct {v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->INTERRUPT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    .line 127
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->REPAIR:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->REPAIR_FDT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->EXIT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->INTERRUPT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    return-object v0
.end method

.method public static values()[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    invoke-virtual {v0}, [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    return-object v0
.end method
