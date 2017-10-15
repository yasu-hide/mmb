.class public final enum Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
.super Ljava/lang/Enum;
.source "MtvOneSegService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/broadcast/oneseg/MtvOneSegService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OneSegSvcState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

.field public static final enum CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

.field public static final enum IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

.field public static final enum MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

.field public static final enum OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

.field public static final enum PAUSE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

.field public static final enum REC_OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

.field public static final enum SCAN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

.field public static final enum START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 158
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v4}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 159
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    const-string v1, "REC_OPEN"

    invoke-direct {v0, v1, v5}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->REC_OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 160
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v6}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 161
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    const-string v1, "START"

    invoke-direct {v0, v1, v7}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 162
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    const-string v1, "PAUSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->PAUSE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 163
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    const-string v1, "SCAN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->SCAN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 164
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    const-string v1, "MAX"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 156
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->REC_OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    aput-object v1, v0, v6

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->PAUSE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->SCAN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    aput-object v2, v0, v1

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->$VALUES:[Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

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
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    const-class v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    return-object v0
.end method

.method public static values()[Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->$VALUES:[Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-virtual {v0}, [Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    return-object v0
.end method
