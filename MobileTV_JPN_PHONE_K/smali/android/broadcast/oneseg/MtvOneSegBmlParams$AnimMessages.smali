.class public final enum Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;
.super Ljava/lang/Enum;
.source "MtvOneSegBmlParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/broadcast/oneseg/MtvOneSegBmlParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimMessages"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

.field public static final enum BML_RECEIVING:Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

.field public static final enum BML_RETREIVING:Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    const-string v1, "BML_RECEIVING"

    invoke-direct {v0, v1, v2}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->BML_RECEIVING:Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    .line 179
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    const-string v1, "BML_RETREIVING"

    invoke-direct {v0, v1, v3}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->BML_RETREIVING:Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    .line 176
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->BML_RECEIVING:Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    aput-object v1, v0, v2

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->BML_RETREIVING:Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    aput-object v1, v0, v3

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->$VALUES:[Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

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
    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 176
    const-class v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    return-object v0
.end method

.method public static values()[Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->$VALUES:[Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    invoke-virtual {v0}, [Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;

    return-object v0
.end method
