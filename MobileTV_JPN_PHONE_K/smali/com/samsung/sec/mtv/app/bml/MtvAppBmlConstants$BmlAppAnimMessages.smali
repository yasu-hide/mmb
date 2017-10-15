.class public final enum Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;
.super Ljava/lang/Enum;
.source "MtvAppBmlConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BmlAppAnimMessages"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

.field public static final enum MTV_APP_BML_ANIM_MSG_NONE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

.field public static final enum MTV_APP_BML_RECEIVING:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

.field public static final enum MTV_APP_BML_RETREIVING:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    const-string v1, "MTV_APP_BML_RECEIVING"

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;->MTV_APP_BML_RECEIVING:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    .line 56
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    const-string v1, "MTV_APP_BML_RETREIVING"

    invoke-direct {v0, v1, v3}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;->MTV_APP_BML_RETREIVING:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    .line 57
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    const-string v1, "MTV_APP_BML_ANIM_MSG_NONE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;->MTV_APP_BML_ANIM_MSG_NONE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;->MTV_APP_BML_RECEIVING:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;->MTV_APP_BML_RETREIVING:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;->MTV_APP_BML_ANIM_MSG_NONE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;->$VALUES:[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    return-object v0
.end method

.method public static values()[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;->$VALUES:[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    invoke-virtual {v0}, [Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    return-object v0
.end method
