.class public final enum Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
.super Ljava/lang/Enum;
.source "MtvAppPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

.field public static final enum INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

.field public static final enum NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

.field public static final enum OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

.field public static final enum PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

.field public static final enum PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

.field public static final enum RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 33
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 35
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    const-string v1, "RECORDER_OPENED"

    invoke-direct {v0, v1, v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 37
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    const-string v1, "OPENED"

    invoke-direct {v0, v1, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 39
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 41
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->$VALUES:[Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    return-object v0
.end method

.method public static values()[Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->$VALUES:[Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v0}, [Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    return-object v0
.end method
