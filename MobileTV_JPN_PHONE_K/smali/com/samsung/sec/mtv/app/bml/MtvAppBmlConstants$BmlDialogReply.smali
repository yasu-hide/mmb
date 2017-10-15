.class public final enum Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;
.super Ljava/lang/Enum;
.source "MtvAppBmlConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BmlDialogReply"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

.field public static final enum MTV_APP_BML_DIALOG_REPLAY_CANCEL:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

.field public static final enum MTV_APP_BML_DIALOG_REPLAY_NO:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

.field public static final enum MTV_APP_BML_DIALOG_REPLAY_YES:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    const-string v1, "MTV_APP_BML_DIALOG_REPLAY_YES"

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->MTV_APP_BML_DIALOG_REPLAY_YES:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    .line 48
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    const-string v1, "MTV_APP_BML_DIALOG_REPLAY_NO"

    invoke-direct {v0, v1, v3}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->MTV_APP_BML_DIALOG_REPLAY_NO:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    .line 49
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    const-string v1, "MTV_APP_BML_DIALOG_REPLAY_CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->MTV_APP_BML_DIALOG_REPLAY_CANCEL:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->MTV_APP_BML_DIALOG_REPLAY_YES:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->MTV_APP_BML_DIALOG_REPLAY_NO:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->MTV_APP_BML_DIALOG_REPLAY_CANCEL:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->$VALUES:[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    return-object v0
.end method

.method public static values()[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->$VALUES:[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    invoke-virtual {v0}, [Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    return-object v0
.end method
