.class public final enum Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
.super Ljava/lang/Enum;
.source "MtvAppBmlConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppBmlUIEvents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

.field public static final enum MTV_APP_BML_UI_EVT_DESTROY_DIALOGUE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

.field public static final enum MTV_APP_BML_UI_EVT_KEYPAD_CHANGED:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

.field public static final enum MTV_APP_BML_UI_EVT_NONE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

.field public static final enum MTV_APP_BML_UI_EVT_SET_ANIMATION_TEXT:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

.field public static final enum MTV_APP_BML_UI_EVT_SET_DIALOGUE_MSG:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

.field public static final enum MTV_APP_BML_UI_EVT_SET_DIALOG_BTN_NUM:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

.field public static final enum MTV_APP_BML_UI_EVT_SHOW_DIALOGUE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

.field public static final enum MTV_APP_BML_UI_EVT_START_ANIMATION:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

.field public static final enum MTV_APP_BML_UI_EVT_START_IME_INPUT_METHOD:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

.field public static final enum MTV_APP_BML_UI_EVT_START_TVLINK_TAB:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

.field public static final enum MTV_APP_BML_UI_EVT_STOP_ANIMATION:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    const-string v1, "MTV_APP_BML_UI_EVT_NONE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_NONE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 145
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    const-string v1, "MTV_APP_BML_UI_EVT_SET_ANIMATION_TEXT"

    invoke-direct {v0, v1, v4}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SET_ANIMATION_TEXT:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 146
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    const-string v1, "MTV_APP_BML_UI_EVT_START_ANIMATION"

    invoke-direct {v0, v1, v5}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_START_ANIMATION:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 147
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    const-string v1, "MTV_APP_BML_UI_EVT_STOP_ANIMATION"

    invoke-direct {v0, v1, v6}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_STOP_ANIMATION:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 148
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    const-string v1, "MTV_APP_BML_UI_EVT_SET_DIALOG_BTN_NUM"

    invoke-direct {v0, v1, v7}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SET_DIALOG_BTN_NUM:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 149
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    const-string v1, "MTV_APP_BML_UI_EVT_DESTROY_DIALOGUE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_DESTROY_DIALOGUE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 150
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    const-string v1, "MTV_APP_BML_UI_EVT_SHOW_DIALOGUE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SHOW_DIALOGUE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 151
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    const-string v1, "MTV_APP_BML_UI_EVT_SET_DIALOGUE_MSG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SET_DIALOGUE_MSG:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 152
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    const-string v1, "MTV_APP_BML_UI_EVT_START_IME_INPUT_METHOD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_START_IME_INPUT_METHOD:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 153
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    const-string v1, "MTV_APP_BML_UI_EVT_START_TVLINK_TAB"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_START_TVLINK_TAB:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 154
    new-instance v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    const-string v1, "MTV_APP_BML_UI_EVT_KEYPAD_CHANGED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_KEYPAD_CHANGED:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 142
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_NONE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SET_ANIMATION_TEXT:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_START_ANIMATION:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_STOP_ANIMATION:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SET_DIALOG_BTN_NUM:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_DESTROY_DIALOGUE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SHOW_DIALOGUE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SET_DIALOGUE_MSG:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_START_IME_INPUT_METHOD:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_START_TVLINK_TAB:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_KEYPAD_CHANGED:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->$VALUES:[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

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
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    const-class v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    return-object v0
.end method

.method public static values()[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->$VALUES:[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    invoke-virtual {v0}, [Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    return-object v0
.end method
