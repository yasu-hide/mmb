.class final enum Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;
.super Ljava/lang/Enum;
.source "MtvUiManualReservation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PopupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

.field public static final enum CHANNEL_NUMBER:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

.field public static final enum END_DATE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

.field public static final enum END_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

.field public static final enum NONE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

.field public static final enum RESRV_TYPE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

.field public static final enum START_DATE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

.field public static final enum START_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->NONE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    const-string v1, "RESRV_TYPE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->RESRV_TYPE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    const-string v1, "CHANNEL_NUMBER"

    invoke-direct {v0, v1, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->CHANNEL_NUMBER:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    const-string v1, "START_DATE"

    invoke-direct {v0, v1, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->START_DATE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    const-string v1, "END_DATE"

    invoke-direct {v0, v1, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->END_DATE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    const-string v1, "START_TIME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->START_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    const-string v1, "END_TIME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->END_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->NONE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->RESRV_TYPE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->CHANNEL_NUMBER:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->START_DATE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->END_DATE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->START_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->END_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->$VALUES:[Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

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
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->$VALUES:[Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    invoke-virtual {v0}, [Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    return-object v0
.end method
