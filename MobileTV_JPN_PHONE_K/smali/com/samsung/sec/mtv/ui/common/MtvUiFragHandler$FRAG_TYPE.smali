.class public final enum Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
.super Ljava/lang/Enum;
.source "MtvUiFragHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FRAG_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_ALL:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_BMLBASIC:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_BMLCAPBASIC:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_BMLCAPKEYPAD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_BMLKEYPAD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_BMLNUMIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_BML_DIALOGUE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_CAPTURE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_CHANNELNUM:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_NONE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_TAG_MEM_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

.field public static final enum TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_UI_MAIN"

    invoke-direct {v0, v1, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_RECORD"

    invoke-direct {v0, v1, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_INFO"

    invoke-direct {v0, v1, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_CAPTURE"

    invoke-direct {v0, v1, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CAPTURE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_CHANNELNUM"

    invoke-direct {v0, v1, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CHANNELNUM:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_BMLNUMIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLNUMIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_BMLBASIC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLBASIC:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_BMLKEYPAD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLKEYPAD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_BMLCAPKEYPAD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLCAPKEYPAD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_BMLCAPBASIC"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLCAPBASIC:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_VOLUME"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .line 57
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_FP_MAIN_IMG"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_FP_MAIN_VID"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_STATUS_BAR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_BML_DIALOGUE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BML_DIALOGUE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .line 58
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_TAG_MEM_INFO"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_MEM_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_TAG_PROG_INFO"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .line 59
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_ALL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_ALL:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-string v1, "TYPE_NONE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_NONE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .line 56
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CAPTURE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CHANNELNUM:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLNUMIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLBASIC:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLKEYPAD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLCAPKEYPAD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLCAPBASIC:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BML_DIALOGUE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_MEM_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_ALL:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_NONE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->$VALUES:[Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->$VALUES:[Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    return-object v0
.end method
