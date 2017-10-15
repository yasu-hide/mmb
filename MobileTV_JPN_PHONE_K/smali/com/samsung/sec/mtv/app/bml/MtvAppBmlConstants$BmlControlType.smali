.class public final enum Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;
.super Ljava/lang/Enum;
.source "MtvAppBmlConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BmlControlType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

.field public static final enum MTV_APP_BML_CONTROL_BASIC:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

.field public static final enum MTV_APP_BML_CONTROL_KEYPAD:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

.field public static final enum MTV_APP_BML_CONTROL_NUMERIC:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    const-string v1, "MTV_APP_BML_CONTROL_BASIC"

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_BASIC:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    .line 42
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    const-string v1, "MTV_APP_BML_CONTROL_KEYPAD"

    invoke-direct {v0, v1, v3}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_KEYPAD:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    .line 43
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    const-string v1, "MTV_APP_BML_CONTROL_NUMERIC"

    invoke-direct {v0, v1, v4}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_NUMERIC:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_BASIC:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_KEYPAD:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_NUMERIC:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->$VALUES:[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->$VALUES:[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    invoke-virtual {v0}, [Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    return-object v0
.end method
