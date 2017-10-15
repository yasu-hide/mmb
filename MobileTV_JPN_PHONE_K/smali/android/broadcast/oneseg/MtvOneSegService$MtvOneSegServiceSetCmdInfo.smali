.class Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;
.super Ljava/lang/Object;
.source "MtvOneSegService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/broadcast/oneseg/MtvOneSegService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MtvOneSegServiceSetCmdInfo"
.end annotation


# instance fields
.field private mCurCmd:I

.field private mCurCmdError:Z

.field private mCurCmdStatus:I

.field private mCurMdl:I

.field private mNextCmd:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mCurCmd:I

    .line 179
    iput v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mCurCmdStatus:I

    .line 180
    iput v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mCurMdl:I

    .line 181
    iput v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mNextCmd:I

    .line 182
    iput-boolean v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mCurCmdError:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/broadcast/oneseg/MtvOneSegService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService$1;

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;-><init>()V

    return-void
.end method

.method static synthetic access$2200(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    .prologue
    .line 177
    iget v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mCurCmdStatus:I

    return v0
.end method

.method static synthetic access$2202(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;
    .param p1, "x1"    # I

    .prologue
    .line 177
    iput p1, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mCurCmdStatus:I

    return p1
.end method

.method static synthetic access$2300(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    .prologue
    .line 177
    iget v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mNextCmd:I

    return v0
.end method

.method static synthetic access$2302(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;
    .param p1, "x1"    # I

    .prologue
    .line 177
    iput p1, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mNextCmd:I

    return p1
.end method

.method static synthetic access$2400(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mCurCmdError:Z

    return v0
.end method

.method static synthetic access$2402(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mCurCmdError:Z

    return p1
.end method

.method static synthetic access$300(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    .prologue
    .line 177
    iget v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mCurCmd:I

    return v0
.end method

.method static synthetic access$302(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;
    .param p1, "x1"    # I

    .prologue
    .line 177
    iput p1, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mCurCmd:I

    return p1
.end method

.method static synthetic access$400(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    .prologue
    .line 177
    iget v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mCurMdl:I

    return v0
.end method

.method static synthetic access$402(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;
    .param p1, "x1"    # I

    .prologue
    .line 177
    iput p1, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mCurMdl:I

    return p1
.end method

.method static synthetic access$476(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;I)I
    .locals 1
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;
    .param p1, "x1"    # I

    .prologue
    .line 177
    iget v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mCurMdl:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->mCurMdl:I

    return v0
.end method
