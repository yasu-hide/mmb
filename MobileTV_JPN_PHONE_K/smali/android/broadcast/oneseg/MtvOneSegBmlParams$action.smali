.class public final enum Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;
.super Ljava/lang/Enum;
.source "MtvOneSegBmlParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/broadcast/oneseg/MtvOneSegBmlParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

.field public static final enum ACTION_DOWN:Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

.field public static final enum ACTION_MOVE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

.field public static final enum ACTION_UP:Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    const-string v1, "ACTION_DOWN"

    invoke-direct {v0, v1, v2}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;->ACTION_DOWN:Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    .line 101
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    const-string v1, "ACTION_MOVE"

    invoke-direct {v0, v1, v3}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;->ACTION_MOVE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    .line 102
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    const-string v1, "ACTION_UP"

    invoke-direct {v0, v1, v4}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;->ACTION_UP:Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;->ACTION_DOWN:Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    aput-object v1, v0, v2

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;->ACTION_MOVE:Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    aput-object v1, v0, v3

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;->ACTION_UP:Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    aput-object v1, v0, v4

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;->$VALUES:[Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    const-class v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    return-object v0
.end method

.method public static values()[Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;->$VALUES:[Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    invoke-virtual {v0}, [Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;

    return-object v0
.end method
