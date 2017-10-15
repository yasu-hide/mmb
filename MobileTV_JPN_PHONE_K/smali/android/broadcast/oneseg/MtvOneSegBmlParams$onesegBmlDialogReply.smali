.class public final enum Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;
.super Ljava/lang/Enum;
.source "MtvOneSegBmlParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/broadcast/oneseg/MtvOneSegBmlParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onesegBmlDialogReply"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

.field public static final enum MTV_ONESEG_BML_DIALOG_REPLAY_CANCEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

.field public static final enum MTV_ONESEG_BML_DIALOG_REPLAY_NO:Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

.field public static final enum MTV_ONESEG_BML_DIALOG_REPLAY_YES:Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 184
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    const-string v1, "MTV_ONESEG_BML_DIALOG_REPLAY_YES"

    invoke-direct {v0, v1, v2}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;->MTV_ONESEG_BML_DIALOG_REPLAY_YES:Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    .line 185
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    const-string v1, "MTV_ONESEG_BML_DIALOG_REPLAY_NO"

    invoke-direct {v0, v1, v3}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;->MTV_ONESEG_BML_DIALOG_REPLAY_NO:Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    .line 186
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    const-string v1, "MTV_ONESEG_BML_DIALOG_REPLAY_CANCEL"

    invoke-direct {v0, v1, v4}, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;->MTV_ONESEG_BML_DIALOG_REPLAY_CANCEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    .line 183
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;->MTV_ONESEG_BML_DIALOG_REPLAY_YES:Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    aput-object v1, v0, v2

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;->MTV_ONESEG_BML_DIALOG_REPLAY_NO:Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    aput-object v1, v0, v3

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;->MTV_ONESEG_BML_DIALOG_REPLAY_CANCEL:Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    aput-object v1, v0, v4

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;->$VALUES:[Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

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
    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 183
    const-class v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    return-object v0
.end method

.method public static values()[Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;->$VALUES:[Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    invoke-virtual {v0}, [Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;

    return-object v0
.end method
