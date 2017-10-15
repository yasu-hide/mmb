.class public final enum Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;
.super Ljava/lang/Enum;
.source "MtvAppPlaybackContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

.field public static final enum LIVETV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

.field public static final enum LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

.field public static final enum SCANNER:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

.field public static final enum TVLINK:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    const-string v1, "LIVETV"

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LIVETV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    .line 27
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    const-string v1, "LOCALTV"

    invoke-direct {v0, v1, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    .line 29
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    const-string v1, "TVLINK"

    invoke-direct {v0, v1, v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->TVLINK:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    .line 31
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    const-string v1, "SCANNER"

    invoke-direct {v0, v1, v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->SCANNER:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LIVETV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->TVLINK:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->SCANNER:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->$VALUES:[Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    return-object v0
.end method

.method public static values()[Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->$VALUES:[Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    invoke-virtual {v0}, [Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    return-object v0
.end method
