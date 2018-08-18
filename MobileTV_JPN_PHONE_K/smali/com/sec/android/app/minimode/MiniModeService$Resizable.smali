.class public final enum Lcom/sec/android/app/minimode/MiniModeService$Resizable;
.super Ljava/lang/Enum;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Resizable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/minimode/MiniModeService$Resizable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/minimode/MiniModeService$Resizable;

.field public static final enum BOTTOM_ONLY:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

.field public static final enum RIGHT_BOTTOM:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

.field public static final enum RIGHT_ONLY:Lcom/sec/android/app/minimode/MiniModeService$Resizable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    const-string v1, "BOTTOM_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/minimode/MiniModeService$Resizable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->BOTTOM_ONLY:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    .line 163
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    const-string v1, "RIGHT_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/minimode/MiniModeService$Resizable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->RIGHT_ONLY:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    .line 164
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    const-string v1, "RIGHT_BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/minimode/MiniModeService$Resizable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->RIGHT_BOTTOM:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    .line 159
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    sget-object v1, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->BOTTOM_ONLY:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->RIGHT_ONLY:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->RIGHT_BOTTOM:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->$VALUES:[Lcom/sec/android/app/minimode/MiniModeService$Resizable;

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
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/minimode/MiniModeService$Resizable;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 159
    const-class v0, Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/minimode/MiniModeService$Resizable;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->$VALUES:[Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    invoke-virtual {v0}, [Lcom/sec/android/app/minimode/MiniModeService$Resizable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    return-object v0
.end method
