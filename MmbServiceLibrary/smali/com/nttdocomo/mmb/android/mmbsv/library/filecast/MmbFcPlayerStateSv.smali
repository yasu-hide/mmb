.class final enum Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;
.super Ljava/lang/Enum;
.source "MmbFcPlayerStateSv.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

.field public static final enum ERROR:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

.field public static final enum FASTFORWARD:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

.field public static final enum IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

.field public static final enum INITIALIZED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

.field public static final enum PAUSE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

.field public static final enum PLAYBACKCOMPLETED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

.field public static final enum PLAYBACKGROUND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

.field public static final enum PREPARED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

.field public static final enum REWIND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

.field public static final enum STARTED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

.field public static final enum STOPPED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 33
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->INITIALIZED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 38
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PREPARED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 43
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STARTED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 48
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PAUSE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 53
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    const-string v1, "FASTFORWARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->FASTFORWARD:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 58
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    const-string v1, "REWIND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->REWIND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 63
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    const-string v1, "STOPPED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STOPPED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 68
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    const-string v1, "PLAYBACKCOMPLETED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKCOMPLETED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 73
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    const-string v1, "ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->ERROR:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 78
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    const-string v1, "PLAYBACKGROUND"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKGROUND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 23
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->INITIALIZED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PREPARED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STARTED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PAUSE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->FASTFORWARD:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->REWIND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STOPPED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKCOMPLETED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->ERROR:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKGROUND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    return-object v0
.end method

.method public static values()[Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->$VALUES:[Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {v0}, [Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    return-object v0
.end method
